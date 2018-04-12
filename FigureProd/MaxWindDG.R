#Makes WRF and PP PDF with outputs from: F:\KrIC2\DIR1Sph.m or *Exp.m

WRFOutIn<-read.csv("F:\\KrIC2\\maps\\MaxWRFOut.csv", header=FALSE)
summary(WRFOutIn)
ObsOutIn<-read.csv("F:\\KrIC2\\maps\\MaxObsOut.csv", header=FALSE)
summary(ObsOutIn)
R1ExpOutIn<-read.csv("F:\\KrIC2\\maps\\MaxR1ExpOut.csv", header=FALSE)
summary(R1ExpOutIn)
R1SphOutIn<-read.csv("F:\\KrIC2\\maps\\MaxR1SphOut.csv", header=FALSE)
summary(R1SphOutIn)
KalOutIn<-read.csv("F:\\KrIC2\\maps\\MaxKalOut.csv", header=FALSE)
summary(KalOutIn)


quantile(WRFOutIn$V1,c(0.025,0.975))#DtmnDataRang
WRFOut95up<-WRFOutIn$V1[WRFOutIn$V1>3.64]
WRFOut95<-WRFOut95up[WRFOut95up<15.43]
summary(WRFOut95)
quantile(ObsOutIn$V1,c(0.025,0.975))#DtmnDataRang
ObsOut95up<-ObsOutIn$V1[ObsOutIn$V1>1.7882]
ObsOut95<-ObsOut95up[ObsOut95up<14.4]
head(ObsOut95)


quantile(R1ExpOutIn$V1,c(0.025,0.975))#DtmnDataRang
R1ExpOut95up<-R1ExpOutIn$V1[R1ExpOutIn$V1>3.516]
R1ExpOut95<-R1ExpOut95up[R1ExpOut95up<14.545]
head(R1ExpOut95)
quantile(R1SphOutIn$V1,c(0.025,0.975))#DtmnDataRang
R1SphOut95up<-R1SphOutIn$V1[R1SphOutIn$V1>3.573]
R1SphOut95<-R1SphOut95up[R1SphOut95up<14.76]
head(R1SphOut95)

quantile(KalOutIn$V1,c(0.025,0.975))#DtmnDataRang
KalOut95up<-KalOutIn$V1[KalOutIn$V1>3.689]
KalOut95<-KalOut95up[KalOut95up<15.736]
head(KalOut95)

WRFOut<-as.data.frame(WRFOut95)
ObsOut<-as.data.frame(ObsOut95)
head(ObsOut)

R1ExpOut<-as.data.frame(R1ExpOut95)
R1SphOut<-as.data.frame(R1SphOut95)
head(ObsOut)

KalOut<-as.data.frame(KalOut95)
head(KalOut)

library(ggplot2)
library(scales)
WRFOut$Estimation<-'WRF'
ObsOut$Estimation<-'OBS'
R1ExpOut$Estimation<-'R1Exp'
R1SphOut$Estimation<-'R1Sph'
KalOut$Estimation<-'Kal'

head(WRFOut)
head(ObsOut)

colnames(WRFOut)[colnames(WRFOut)=="WRFOut95"] <- "Wind"
colnames(ObsOut)[colnames(ObsOut)=="ObsOut95"] <- "Wind"
colnames(R1ExpOut)[colnames(R1ExpOut)=="R1ExpOut95"] <- "Wind"
colnames(R1SphOut)[colnames(R1SphOut)=="R1SphOut95"] <- "Wind"
colnames(KalOut)[colnames(KalOut)=="KalOut95"] <- "Wind"

WRFOutlengths<-rbind(KalOut,ObsOut,R1ExpOut,R1SphOut,WRFOut)
head(WRFOutlengths)

#PDF's>>
RMSEplot<-ggplot(WRFOutlengths,aes(Wind,fill=Estimation))+geom_density(alpha=0.2)
RMSEplot+ xlab("Wind Speed (m/s)") + ylab("Density") + scale_y_continuous(labels=percent) +theme(panel.background = element_rect(fill = 'white'),
                                                                                           axis.title.x = element_text(size=15),axis.title.y = element_text(size=15),
                                                                                           axis.text.x = element_text(size=15),axis.text.y = element_text(size=15),
                                                                                           legend.text = element_text(size=15),
                                                                                           legend.title = element_text(size=15)) + scale_fill_discrete(name="Prediction\nMethod",
                                                                                                                                                       breaks=c("Kal","OBS","R1Exp", "R1Sph", "WRF"),
                                                                                                                                                       labels=c("KF","Obs","R2(Exp)", "R2(Sph)","WRF"))
#ggplot(ABSlengths,aes(AbsBias,fill=Estimation))+geom_density(alpha=0.2)
# #<<

#Boxplots>>
boxplot(WRFOutlengths$Wind~WRFOutlengths$Estimation, main="Final Model Output WS AP 107 Storms",
        ylab="Wind Speed (m/s)", col=(c("indianred1","gold","palegreen","chocolate","lightskyblue1")),
        names=c("KF","Obs","R2(Exp)", "R2(Sph)","WRF"))

# #<<


plot(WRFOutIn$V1,R1ExpOutIn$V1)
plot(KalOutIn$V1,R1ExpOutIn$V1)

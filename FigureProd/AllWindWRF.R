#Makes WRF and PP PDF with outputs from: F:\KrIC2\DIR1Sph.m or *Exp.m

WRFOutIn<-read.csv("F:\\KrIC2\\maps\\WRFOut.csv", header=FALSE)
summary(WRFOutIn)
ObsOutIn<-read.csv("F:\\KrIC2\\maps\\ObsOut.csv", header=FALSE)
summary(ObsOutIn)
R1ExpOutIn<-read.csv("F:\\KrIC2\\maps\\R1ExpOut.csv", header=FALSE)
summary(R1ExpOutIn)
R1SphOutIn<-read.csv("F:\\KrIC2\\maps\\R1SphOut.csv", header=FALSE)
summary(R1SphOutIn)
KalOutIn<-read.csv("F:\\KrIC2\\maps\\KalOut.csv", header=FALSE)
summary(KalOutIn)


quantile(WRFOutIn$V1,c(0.025,0.975))#DtmnDataRang
WRFOut95up<-WRFOutIn$V1[WRFOutIn$V1>0.66]
WRFOut95<-WRFOut95up[WRFOut95up<10.67]
summary(WRFOut95)
quantile(ObsOutIn$V1,c(0.025,0.975))#DtmnDataRang
ObsOut95up<-ObsOutIn$V1[ObsOutIn$V1>0.447]
ObsOut95<-ObsOut95up[ObsOut95up<9.77]
head(ObsOut95)


quantile(R1ExpOutIn$V1,c(0.025,0.975))#DtmnDataRang
R1ExpOut95up<-R1ExpOutIn$V1[R1ExpOutIn$V1>0.54]
R1ExpOut95<-R1ExpOut95up[R1ExpOut95up<9.6351]
head(R1ExpOut95)
quantile(R1SphOutIn$V1,c(0.025,0.975))#DtmnDataRang
R1SphOut95up<-R1SphOutIn$V1[R1SphOutIn$V1>0.5346]
R1SphOut95<-R1SphOut95up[R1SphOut95up<9.7957]
head(R1SphOut95)

quantile(KalOutIn$V1,c(0.025,0.975))#DtmnDataRang
KalOut95up<-KalOutIn$V1[KalOutIn$V1>0.2652]
KalOut95<-KalOut95up[KalOut95up<10.447]
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

WRFOutlengths<-rbind(WRFOut,ObsOut,R1ExpOut,R1SphOut,KalOut)
head(WRFOutlengths)

#PDF's>>
RMSEplot<-ggplot(WRFOutlengths,aes(Wind,fill=Estimation))+geom_density(alpha=0.2)
RMSEplot+ xlab("Wind Speed (m/s)") + ylab("Density") + scale_y_continuous(labels=percent) +theme(panel.background = element_rect(fill = 'white'),
                                                                                           axis.title.x = element_text(size=15),axis.title.y = element_text(size=15),
                                                                                           axis.text.x = element_text(size=15),axis.text.y = element_text(size=15),
                                                                                           legend.text = element_text(size=15),
                                                                                           legend.title = element_text(size=15)) + scale_fill_discrete(name="Prediction\nMethod",
                                                                                                                                                       breaks=c("Kal","OBS", "R1Exp", "R1Sph", "WRF"),
                                                                                                                                                       labels=c( "KF","Obs", "R1(Exp)", "R1(Sph)","WRF"))
#ggplot(ABSlengths,aes(AbsBias,fill=Estimation))+geom_density(alpha=0.2)
# #<<

#Boxplots>>
boxplot(WRFOutlengths$Wind~WRFOutlengths$Estimation, main="Wind Speed Distributions All Pairs",
        ylab="Wind Speed (m/s)", col=(c("indianred1","gold","palegreen","chocolate","lightskyblue1")),
        names=c("KF","Obs","R1(Exp)", "R1(Sph)","WRF"))

# #<<


#ggplot(WRFOutlengths,aes(Wind,fill=Estimation))+geom_histogram(alpha=0.2, aes(y = ..density..), position = 'identity')
ggplot(WRFOutlengths,aes(Wind, colour=Estimation))+
  geom_histogram(show.legend = F, position = 'identity')+
  theme_minimal()

ggplot(WRFOutlengths,aes(Wind, colour=Estimation))+
  geom_density(show.legend = T, adjust=2)+ xlab("Wind Speed (m/s)") + ylab("Density") + scale_y_continuous(labels=percent) +
theme(panel.background = element_rect(fill = 'white'),
       axis.title.x = element_text(size=15),axis.title.y = element_text(size=15),
       axis.text.x = element_text(size=15),axis.text.y = element_text(size=15),
       legend.text = element_text(size=15),
      legend.key = element_rect(fill = 'white'),
       legend.title = element_text(size=15)) + scale_fill_discrete(name="Prediction\nMethod",
                                                                   breaks=c("Kal","OBS", "R1Exp", "R1Sph", "WRF"),
                                                                   labels=c( "KF","Obs", "R1(Exp)", "R1(Sph)","WRF"))

p1 <- hist(ObsOut$Wind, xlab=("Observed Wind Speed (m/s)"), freq=FALSE)                     # centered at 4
p2 <- hist(WRFOut$Wind, xlab=("Observed Wind Speed (m/s)"), freq=FALSE)                     # centered at 6
plot( p1, col=rgb(0,0,1,1/4), xlim=c(0,10),freq=FALSE,  xlab=("Observed Wind Speed (m/s)"))  # first histogram
plot( p2, col=rgb(1,0,0,1/4), xlim=c(0,10), add=T, freq=FALSE, xlab=("Observed Wind Speed (m/s)"))  # second
legend("topright",c("Obs","WRF"), col=c(rgb(0,0,1,1/4),rgb(1,0,0,1/4)), pch=15)

p1 <- hist(ObsOut$Wind, xlab=("Observed Wind Speed (m/s)"), freq=FALSE)                     # centered at 4
p2 <- hist(KalOut$Wind, xlab=("Observed Wind Speed (m/s)"), freq=FALSE)                     # centered at 6
plot( p1, col=rgb(0,0,1,1/4), xlim=c(0,10), freq=FALSE, xlab=("Observed Wind Speed (m/s)"))  # first histogram
plot( p2, col=rgb(1,0,0,1/4), xlim=c(0,10), freq=FALSE, add=T, xlab=("Observed Wind Speed (m/s)"))  # second
legend("topright",c("Obs","KF"), col=c(rgb(0,0,1,1/4),rgb(1,0,0,1/4)), pch=15)

p1 <- hist(ObsOut$Wind, xlab=("Observed Wind Speed (m/s)"), freq=FALSE)                     # centered at 4
p2 <- hist(R1ExpOut$Wind, xlab=("Observed Wind Speed (m/s)"), freq=FALSE) 
plot( p2, col=rgb(1,0,0,1/4), xlim=c(0,10), freq=FALSE, xlab=("Observed Wind Speed (m/s)"))# centered at 6
plot( p1, col=rgb(0,0,1,1/4), xlim=c(0,10), freq=FALSE, add=T,xlab=("Observed Wind Speed (m/s)"))  # first histogram
  # second
legend("topright",c("Obs","R1(Exp) "), col=c(rgb(0,0,1,1/4),rgb(1,0,0,1/4)), pch=15)

p1 <- hist(ObsOut$Wind, xlab=("Observed Wind Speed (m/s)"), freq=FALSE)                     # centered at 4
p2 <- hist(R1SphOut$Wind, xlab=("Observed Wind Speed (m/s)"), freq=FALSE)                     # centered at 6
plot( p1, col=rgb(0,0,1,1/4), xlim=c(0,10), freq=FALSE, xlab=("Observed Wind Speed (m/s)"))  # first histogram
plot( p2, col=rgb(1,0,0,1/4), xlim=c(0,10), freq=FALSE, add=T, xlab=("Observed Wind Speed (m/s)"))  # second
legend("topright",c("Obs","R1(Sph) "), col=c(rgb(0,0,1,1/4),rgb(1,0,0,1/4)), pch=15)
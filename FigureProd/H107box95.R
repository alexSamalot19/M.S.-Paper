W1o3WRF1<-read.table("F:\\KrIC2\\ICD2\\fihaBTwrfL.txt", header=FALSE)
head(W1o3WRF1)
class(W1o3WRF1)

W1o3WRF2<-read.table("F:\\KrIC2\\ICD2\\sechaBTwrf.txt", header=FALSE)
head(W1o3WRF2)
class(W1o3WRF2)

W1o3WRF3<-read.table("F:\\KrIC2\\ICD2\\thrhaBTwrf.txt", header=FALSE)
tail(W1o3WRF3)
class(W1o3WRF3)

W1o3WRF<-rbind(W1o3WRF1,W1o3WRF2,W1o3WRF3)
head(W1o3WRF)
tail(W1o3WRF)

dim(W1o3WRF)

W1o3KF1<-read.table("F:\\KrIC2\\ICD2\\fihaBTKal.txt", header=FALSE)
head(W1o3KF1)
class(W1o3KF1)

W1o3KF2<-read.table("F:\\KrIC2\\ICD2\\sechaBTKal.txt", header=FALSE)
head(W1o3KF2)
class(W1o3KF2)

W1o3KF3<-read.table("F:\\KrIC2\\ICD2\\thrhaBTKal.txt", header=FALSE)
tail(W1o3KF3)
class(W1o3KF3)

W1o3KF<-rbind(W1o3KF1,W1o3KF2,W1o3KF3)
head(W1o3KF)
tail(W1o3KF)

dim(W1o3KF)


W1o3R1SPH1<-read.table("F:\\R1SphD2\\fihaBTpKal.txt", header=FALSE)
head(W1o3R1SPH1)
class(W1o3R1SPH1)

W1o3R1SPH2<-read.table("F:\\R1SphD2\\sechaBTpKal.txt", header=FALSE)
head(W1o3R1SPH2)
class(W1o3R1SPH2)

W1o3R1SPH3<-read.table("F:\\R1SphD2\\thrhaBTpKal.txt", header=FALSE)
tail(W1o3R1SPH3)
class(W1o3R1SPH3)

W1o3R1SPH<-rbind(W1o3R1SPH1,W1o3R1SPH2,W1o3R1SPH3)
head(W1o3R1SPH)
tail(W1o3R1SPH)

dim(W1o3R1SPH)

W1o3R1EXP1<-read.table("F:\\R1ExpD2\\fihaBTpKal.txt", header=FALSE)
head(W1o3R1EXP1)
class(W1o3R1EXP1)

W1o3R1EXP2<-read.table("F:\\R1ExpD2\\sechaBTpKal.txt", header=FALSE)
head(W1o3R1EXP2)
class(W1o3R1EXP2)

W1o3R1EXP3<-read.table("F:\\R1ExpD2\\thrhaBTpKal.txt", header=FALSE)
tail(W1o3R1EXP3)
class(W1o3R1EXP3)

W1o3R1EXP<-rbind(W1o3R1EXP1,W1o3R1EXP2,W1o3R1EXP3)
head(W1o3R1EXP)
tail(W1o3R1EXP)

dim(W1o3R1EXP)


##Just Histograms>>
#KalRMSE<-read.table("F:\\KalRMSE22.csv", header=FALSE)
#PkalRMSE<-read.table("F:\\PkalRMSE22.csv", header=FALSE)
#R1EPkalRMSE<-read.csv("F:\\PkalRMSER1Exp.csv", header=FALSE)
#R1SPkalRMSE<-read.csv("F:\\PkalRMSER1Sph.csv", header=FALSE)
#WRFrmse<-read.table("F:\\WRFrmse22.csv", header=FALSE)



head(W1o3WRF)
quantile(W1o3WRF$V1,c(0.025,0.975))#DtmnDataRang
W1o3WRF95up<-W1o3WRF$V1[W1o3WRF$V1>-3.61585]
W1o3WRF95<-W1o3WRF95up[W1o3WRF95up<6.3267]
summary(W1o3WRF95)

quantile(W1o3KF$V1,c(0.025,0.975))#DtmnDataRang
W1o3KF95up<-W1o3KF$V1[W1o3KF$V1>-4.0366]
W1o3KF95<-W1o3KF95up[W1o3KF95up<5.27116]
summary(W1o3KF95)


quantile(W1o3R1SPH$V1,c(0.025,0.975))#DtmnDataRang
W1o3R1SPH95up<-W1o3R1SPH$V1[W1o3R1SPH$V1>-4.0436]
W1o3R1SPH95<-W1o3R1SPH95up[W1o3R1SPH95up<4.9283]
summary(W1o3R1SPH95)

quantile(W1o3R1EXP$V1,c(0.025,0.975))#DtmnDataRang
W1o3R1EXP95up<-W1o3R1EXP$V1[W1o3R1EXP$V1>-4.1741]
W1o3R1EXP95<-W1o3R1EXP95up[W1o3R1EXP95up<4.9316]
summary(W1o3R1EXP95)



KalBIAS<-as.data.frame(W1o3KF95)
#PkalBIAS<-W1o3R1EXP1
R1EPkalBIAS<-as.data.frame(W1o3R1EXP95)
R1SPkalBIAS<-as.data.frame(W1o3R1SPH95)
WRFbias<-as.data.frame(W1o3WRF95)
#sphBIAS<-
#sphRMSE<-read.table("F:\\SphD2\\PkalRMSEsph.txt",  header=FALSE)
# #<<

##Absolute bias>>
#ABSkalB<-abs(KalBIAS)
#ABSpkalB<-abs(PkalBIAS)
#R1EABSpkalB<-abs(R1EPkalBIAS)
#R1SABSpkalB<-abs(R1SPkalBIAS)
#ABSsph<-abs(sphBIAS)
#ABSwrfB<-abs(WRFbias)
# #<<

library(ggplot2)
library(scales)
#Labeling>>
#KalRMSE$Estimation<-'M1KF'
#PkalRMSE$Estimation<-'M2RK'
#R1EPkalRMSE$Estimation<-'R1EM2RK'
#R1SPkalRMSE$Estimation<-'R1SM2RK'
#sphRMSE$Estimation<-'sphRK'
#WRFrmse$Estimation<-'WRF'
#head(R1EPkalRMSE)
#colnames(KalRMSE)[colnames(KalRMSE)=="V1"] <- "RMSE"
#colnames(PkalRMSE)[colnames(PkalRMSE)=="V1"] <- "RMSE"
#colnames(R1EPkalRMSE)[colnames(R1EPkalRMSE)=="V1"] <- "RMSE"
#colnames(R1SPkalRMSE)[colnames(R1SPkalRMSE)=="V1"] <- "RMSE"
#colnames(sphRMSE)[colnames(sphRMSE)=="V1"] <- "RMSE"
#colnames(WRFrmse)[colnames(WRFrmse)=="V1"] <- "RMSE"

KalBIAS$Estimation<-'M1KF'
#PkalBIAS$Estimation<-'M2RK'
R1EPkalBIAS$Estimation<-'R1EM2RK'
R1SPkalBIAS$Estimation<-'R1SM2RK'
#sphBIAS$Estimation<-'sphRK'
WRFbias$Estimation<-'WRF'
head(WRFbias)

colnames(KalBIAS)[colnames(KalBIAS)=="W1o3KF95"] <- "Bias"
#colnames(PkalBIAS)[colnames(PkalBIAS)=="V1"] <- "Bias"
colnames(R1EPkalBIAS)[colnames(R1EPkalBIAS)=="W1o3R1EXP95"] <- "Bias"
colnames(R1SPkalBIAS)[colnames(R1SPkalBIAS)=="W1o3R1SPH95"] <- "Bias"
#colnames(sphBIAS)[colnames(sphBIAS)=="V1"] <- "Bias"
colnames(WRFbias)[colnames(WRFbias)=="W1o3WRF95"] <- "Bias"
head(KalBIAS)
head(R1EPkalBIAS)
head(R1SPkalBIAS)
head(WRFbias)



#ABSkalB$Estimation<-'M1KF'
#ABSpkalB$Estimation<-'M2RK'
#R1EABSpkalB$Estimation<-'R1EM2RK'
#R1SABSpkalB$Estimation<-'R1SM2RK'
#ABSsph$Estimation<-'sphRK'
#ABSwrfB$Estimation<-'WRF'
#colnames(ABSkalB)[colnames(ABSkalB)=="V1"] <- "AbsBias"
#colnames(ABSpkalB)[colnames(ABSpkalB)=="V1"] <- "AbsBias"
#colnames(R1EABSpkalB)[colnames(R1EABSpkalB)=="V1"] <- "AbsBias"
#colnames(R1SABSpkalB)[colnames(R1SABSpkalB)=="V1"] <- "AbsBias"
#colnames(ABSsph)[colnames(ABSsph)=="V1"] <- "AbsBias"
#colnames(ABSwrfB)[colnames(ABSwrfB)=="V1"] <- "AbsBias"
# #<<


#concatenate data
#RMSElengths<-rbind(R1EPkalRMSE,R1SPkalRMSE,WRFrmse,KalRMSE)
BIASlengths<-rbind(R1EPkalBIAS,R1SPkalBIAS,WRFbias,KalBIAS)
#ABSlengths<-rbind(ABSpkalB,R1EABSpkalB,R1SABSpkalB,ABSsph,ABSwrfB,ABSkalB)
# #<<
head(BIASlengths)
#PDF's>>
#RMSEplot<-ggplot(RMSElengths,aes(RMSE,fill=Estimation))+geom_density(alpha=0.2)
#RMSEplot+ xlab("RMSE (m/s)") + ylab("Density") + scale_y_continuous(labels=percent) +theme(panel.background = element_rect(fill = 'white'),
#   axis.title.x = element_text(size=15),axis.title.y = element_text(size=15),
#   axis.text.x = element_text(size=15),axis.text.y = element_text(size=15),
#   legend.text = element_text(size=15),
#   legend.title = element_text(size=15)) + scale_fill_discrete(name="Prediction\nMethod",
#                                                                 breaks=c("M1KF", "M2RK","R1EM2RK","R1SM2RK","sphRK", "WRF"),
#                                                                 labels=c("KF", "RK(Exp)","R2RK(Exp)","R1RK(Sph)","R2(Sph)", "WRF"))
#
#
Biasplot<-ggplot(BIASlengths,aes(Bias,fill=Estimation))+geom_density(alpha=0.2)
Biasplot+ xlab("Bias (m/s)") + ylab("Density") + scale_y_continuous(labels=percent) +theme(panel.background = element_rect(fill = 'white'),
                                                                                           axis.title.x = element_text(size=15),axis.title.y = element_text(size=15),
                                                                                           axis.text.x = element_text(size=15),axis.text.y = element_text(size=15),
                                                                                           legend.text = element_text(size=15),
                                                                                           legend.title = element_text(size=15)) + scale_fill_discrete(name="Prediction\nMethod",
                                                                                                                                                       breaks=c("M1KF", "R1EM2RK","R1SM2RK", "WRF"),
                                                                                                                                                       labels=c("KF","R1(Exp)","R1(Sph)", "WRF"))


#ggplot(ABSlengths,aes(AbsBias,fill=Estimation))+geom_density(alpha=0.2)
# #<<

#Boxplots>>
#boxplot(RMSElengths$RMSE~RMSElengths$Estimation, main="Final Model Output RMSE 107 Storms",
#        ylab="RMSE (m/s)", col=(c("indianred1","palegreen","chocolate","lightskyblue1")),
#         names=c("KF", "R1(Exp)","R1(Sph)", "WRF"))
#boxplot(ABSlengths$AbsBias~ABSlengths$Estimation, main="Final Model Output Absolute Bias 107 Storms",
#       ylab="Abs Bias (m/s)", col=(c("indianred1","palegreen","palegreen","chocolate","chocolate","lightskyblue1")),
#      names=c("KF", "R2(Exp)","R1(Exp)","R2(Sph)","R2(Sph)", "WRF"))
boxplot(BIASlengths$Bias~BIASlengths$Estimation, main="Final Model Output Bias 107 Storms", 
        ylab="Bias (m/s)", col=(c("indianred1","palegreen","chocolate","lightskyblue1")),
        names=c("KF", "R1(Exp)","R1(Sph)", "WRF"))
abline(h=0, lty=2)
# #<<






#Assorted Loose Stats, not really essential>>
#kalrms<-sapply(KalRMSE,as.numeric)
#hist(kalrms)
#
#pkalrms<-sapply(PkalRMSE,as.numeric)
#hist(pkalrms)
#
#wrfrms<-sapply(WRFrmse,as.numeric)
#hist(wrfrms)
#
#kalb<-sapply(KalBIAS,as.numeric)
#hist(kalb)
#
#pkalb<-sapply(PkalBIAS,as.numeric)
#hist(pkalb)
#
#wrfb<-sapply(WRFbias,as.numeric)
#hist(wrfb)
# #<<




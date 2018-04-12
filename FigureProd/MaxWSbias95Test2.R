#Creates the Boxplots of the differences (bias) in 
#The Max WS

# #Read the Inp Files
MaxObsAr<-read.table("F:\\MaxSphD2\\DRlatFFArraysph.txt", header=FALSE)
MaxRKexpAr<-read.table("F:\\MaxD2\\DRpKalsph.txt", header=FALSE)
MaxRKsphAr<-read.table("F:\\MaxSphD2\\DRpKalsph.txt", header=FALSE)
MaxKFAr<-read.table("F:\\MaxSphD2\\DRKalsph.txt", header=FALSE)
MaxWRFAr<-read.table("F:\\MaxSphD2\\DRwrfsph.txt", header=FALSE)

MaxR1expAr<-read.table("F:\\R1MaxExpD2\\DRpKalsph.txt", header=FALSE)
MaxR1sphAr<-read.table("F:\\R1MaxSphD2\\DRpKalsph.txt", header=FALSE)
# #<<

  
# #Calculate the Bias of each method>>
MWSBRKexpAr<-MaxRKexpAr
MWSBRKsphAr<-MaxRKsphAr
MWSBKFAr<-MaxKFAr
MWSBWRFAr<-MaxWRFAr

MWSBR1expAr<-MaxR1expAr
MWSBR1sphAr<-MaxR1sphAr
# #<<

quantile(MWSBWRFAr$V1,c(0.025,0.975))#DtmnDataRang
MWSBWRFAr95up<-MWSBWRFAr$V1[MWSBWRFAr$V1>3.64]
MWSBWRFAr95<-MWSBWRFAr95up[MWSBWRFAr95up<15.434]
#summary(MWSBWRFAr95)


quantile(MWSBRKsphAr$V1,c(0.025,0.975))#DtmnDataRang
MWSBRKsphAr95up<-MWSBRKsphAr$V1[MWSBRKsphAr$V1>3.573]
MWSBRKsphAr95<-MWSBRKsphAr95up[MWSBRKsphAr95up<14.76]
#summary(MWSBRKsphAr95)

quantile(MWSBKFAr$V1,c(0.025,0.975))#DtmnDataRang
MWSBKFAr95up<-MWSBKFAr$V1[MWSBKFAr$V1>3.689]
MWSBKFAr95<-MWSBKFAr95up[MWSBKFAr95up<15.736]
#summary(MWSBKFAr95)

quantile(MWSBRKexpAr$V1,c(0.025,0.975))#DtmnDataRang
MWSBRKexpAr95up<-MWSBRKexpAr$V1[MWSBRKexpAr$V1>3.516]
MWSBRKexpAr95<-MWSBRKexpAr95up[MWSBRKexpAr95up<14.545]
#summary(MWSBRKexpAr95)


MWSBKFAr955<-as.data.frame(MWSBKFAr95)
head(MWSBKFAr955)
MWSBRKexpAr955<-as.data.frame(MWSBRKexpAr95)
head(MWSBRKexpAr955)
MWSBRKsphAr955<-as.data.frame(MWSBRKsphAr95)
head(MWSBRKsphAr955)
MWSBWRFAr955<-as.data.frame(MWSBWRFAr95)
head(MWSBWRFAr955)



# #Format the Data for boxplot funciton>>
colnames(MWSBKFAr955)[colnames(MWSBKFAr955)=="MWSBKFAr95"] <- "Bias"
colnames(MWSBRKexpAr955)[colnames(MWSBRKexpAr955)=="MWSBRKexpAr95"] <- "Bias"
colnames(MWSBRKsphAr955)[colnames(MWSBRKsphAr955)=="MWSBRKsphAr95"] <- "Bias"
colnames(MWSBWRFAr955)[colnames(MWSBWRFAr955)=="MWSBWRFAr95"] <- "Bias"

MWSBKFAr955$Estimation<-'M1KF'
MWSBRKexpAr955$Estimation<-'M2RK'
MWSBRKsphAr955$Estimation<-'sphRK'
MWSBWRFAr955$Estimation<-'WRF'

BIASlengths<-rbind(MWSBRKexpAr955,MWSBRKsphAr955,MWSBWRFAr955,MWSBKFAr955)
# #<<


# #Produce the Boxplots>>
library(ggplot2)
library(scales)
boxplot(BIASlengths$Bias~BIASlengths$Estimation, main="Maximum Wind Speed All Pairs", 
        ylab="Bias (m/s)", col=(c("indianred1","palegreen","chocolate","lightskyblue1")),
        names=c("KF", "R2(Exp)","R2(Sph)", "WRF"))
abline(h=0, lty=2)
Biasplot<-ggplot(BIASlengths,aes(Bias,fill=Estimation))+geom_density(alpha=0.2)
Biasplot+ xlab("Bias (m/s)") + ylab("Density") + scale_y_continuous(labels=percent) +theme(panel.background = element_rect(fill = 'white'),
                                                                                           axis.title.x = element_text(size=15),axis.title.y = element_text(size=15),
                                                                                           axis.text.x = element_text(size=15),axis.text.y = element_text(size=15),
                                                                                           legend.text = element_text(size=15),
                                                                                           legend.title = element_text(size=15)) + scale_fill_discrete(name="Prediction\nMethod",
                                                                                                                                                       breaks=c("M1KF", "M2RK","sphRK", "WRF"),
                                                                                                                                                       labels=c("KF", "R2(Exp)","R2(Sph)", "WRF"))



# #<<
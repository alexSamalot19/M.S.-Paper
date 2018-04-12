##mbObsKMeansNA<- read.csv("F:\\KrIC2\\maps\\", header=TRUE)
mbWRFMeansNA<- read.csv("F:\\KrIC2\\maps\\WINDmbWRFV2.csv", header=FALSE)
mbKFMeansNA<- read.csv("F:\\KrIC2\\maps\\WINDmbKFV2.csv", header=FALSE)

mbEXPMeansNA<- read.csv("F:\\KrIC2\\maps\\WINDmbEXPV2.csv", header=FALSE)
mbSPHMeansNA<- read.csv("F:\\KrIC2\\maps\\WINDmbSPHV2.csv", header=FALSE)

R1mbEXPMeansNA<- read.csv("F:\\KrIC2\\maps\\WINDmbR1EXPV2.csv", header=FALSE)
R1mbSPHMeansNA<- read.csv("F:\\KrIC2\\maps\\WINDmbR1SPHV2.csv", header=FALSE)


##ObsKMeansNA<- read.csv("F:\\KrIC2\\maps\\", header=TRUE)
WRFMeansNA<- read.csv("F:\\KrIC2\\maps\\WINDRWRFV2.csv", header=FALSE)
KFMeansNA<- read.csv("F:\\KrIC2\\maps\\WINDRKFV2.csv", header=FALSE)

EXPMeansNA<- read.csv("F:\\KrIC2\\maps\\WINDREXPV2.csv", header=FALSE)
SPHMeansNA<- read.csv("F:\\KrIC2\\maps\\WINDRSPHV2.csv", header=FALSE)

R1EXPMeansNA<- read.csv("F:\\KrIC2\\maps\\WINDR1EXPV2.csv", header=FALSE)
R1SPHMeansNA<- read.csv("F:\\KrIC2\\maps\\WINDR1SPHV2.csv", header=FALSE)


##mbObsKMeansNAOM<-na.omit(mbObsKMeansNA)
mbWRFMeansNAOM<-na.omit(mbWRFMeansNA)
mbKFMeansNAOM<-na.omit(mbKFMeansNA)

mbEXPMeansNAOM<-na.omit(mbEXPMeansNA)
mbSPHMeansNAOM<-na.omit(mbSPHMeansNA)

R1mbEXPMeansNAOM<-na.omit(R1mbEXPMeansNA)
R1mbSPHMeansNAOM<-na.omit(R1mbSPHMeansNA)


##ObsKMeansNAOM<-na.omit(ObsKMeansNA)
WRFMeansNAOM<-na.omit(WRFMeansNA)
KFMeansNAOM<-na.omit(KFMeansNA)

EXPMeansNAOM<-na.omit(EXPMeansNA)#
SPHMeansNAOM<-na.omit(SPHMeansNA)

R1EXPMeansNAOM<-na.omit(R1EXPMeansNA)
R1SPHMeansNAOM<-na.omit(R1SPHMeansNA)


##write.csv(mbObsKMeansNAOM, file="F:\\KrIC2\\maps\\")
#write.table(mbWRFMeansNAOM, file="F:\\KrIC2\\maps\\WINDmbWRF.csv", 
 #           sep=",",  row.names=FALSE, col.names=FALSE)
#write.table(mbKFMeansNAOM, file="F:\\KrIC2\\maps\\WINDmbKF.csv", 
 #           sep=",",  row.names=FALSE, col.names=FALSE)
#write.table(mbEXPMeansNAOM, file="F:\\KrIC2\\maps\\WINDmbEXP.csv", 
 #          sep=",",  row.names=FALSE, col.names=FALSE)#
#write.table(mbSPHMeansNAOM, file="F:\\KrIC2\\maps\\WINDmbSPH.csv", 
 #           sep=",",  row.names=FALSE, col.names=FALSE)
#write.table(R1mbEXPMeansNAOM, file="F:\\KrIC2\\maps\\WINDmbR1EXP.csv", 
  #      sep=",",  row.names=FALSE, col.names=FALSE)
#write.table(R1mbSPHMeansNAOM, file="F:\\KrIC2\\maps\\WINDmbR1SPH.csv", 
 #           sep=",",  row.names=FALSE, col.names=FALSE)



##write.csv(ObsKMeansNAOM, file="F:\\KrIC2\\maps\\")
#write.table(WRFMeansNAOM, file="F:\\KrIC2\\maps\\WINDR1WRF.csv", 
 #           sep=",",  row.names=FALSE, col.names=FALSE)
#write.table(KFMeansNAOM, file="F:\\KrIC2\\maps\\WINDR1KF.csv", 
  #          sep=",",  row.names=FALSE, col.names=FALSE)
write.table(EXPMeansNAOM, file="F:\\KrIC2\\maps\\WINDREXP.csv", 
            sep=",",  row.names=FALSE, col.names=FALSE)
write.table(SPHMeansNAOM, file="F:\\KrIC2\\maps\\WINDRSPH.csv", 
            sep=",",  row.names=FALSE, col.names=FALSE)
write.table(R1EXPMeansNAOM, file="F:\\KrIC2\\maps\\WINDR1EXP.csv", 
            sep=",",  row.names=FALSE, col.names=FALSE)
write.table(R1SPHMeansNAOM, file="F:\\KrIC2\\maps\\WINDR1SPH.csv", 
            sep=",",  row.names=FALSE, col.names=FALSE)


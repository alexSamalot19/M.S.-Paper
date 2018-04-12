##mbObsKMeansNA<- read.csv("F:\\KrIC2\\maps\\", header=TRUE)
#mbWRFMeansNA<- read.csv("F:\\KrIC2\\maps\\FIXmbWRFV2.csv", header=FALSE)
#mbKFMeansNA<- read.csv("F:\\KrIC2\\maps\\FIXmbKFV2.csv", header=FALSE)

mbEXPMeansNA<- read.csv("F:\\KrIC2\\maps\\FIXmbEXPV2.csv", header=FALSE)
mbSPHMeansNA<- read.csv("F:\\KrIC2\\maps\\FIXmbSPHV2.csv", header=FALSE)

R1mbEXPMeansNA<- read.csv("F:\\KrIC2\\maps\\FIXmbR1EXPV2.csv", header=FALSE)
R1mbSPHMeansNA<- read.csv("F:\\KrIC2\\maps\\FIXmbR1SPHV2.csv", header=FALSE)


##ObsKMeansNA<- read.csv("F:\\KrIC2\\maps\\", header=TRUE)
#WRFMeansNA<- read.csv("F:\\KrIC2\\maps\\FIXRWRFV2.csv", header=FALSE)
#KFMeansNA<- read.csv("F:\\KrIC2\\maps\\FIXRKFV2.csv", header=FALSE)

EXPMeansNA<- read.csv("F:\\KrIC2\\maps\\FIXREXPV2.csv", header=FALSE)
SPHMeansNA<- read.csv("F:\\KrIC2\\maps\\FIXRSPHV2.csv", header=FALSE)

R1EXPMeansNA<- read.csv("F:\\KrIC2\\maps\\FIXR1EXPV2.csv", header=FALSE)
R1SPHMeansNA<- read.csv("F:\\KrIC2\\maps\\FIXR1SPHV2.csv", header=FALSE)


##mbObsKMeansNAOM<-na.omit(mbObsKMeansNA)
#mbWRFMeansNAOM<-na.omit(mbWRFMeansNA)
#mbKFMeansNAOM<-na.omit(mbKFMeansNA)

mbEXPMeansNAOM<-na.omit(mbEXPMeansNA)
mbSPHMeansNAOM<-na.omit(mbSPHMeansNA)

R1mbEXPMeansNAOM<-na.omit(R1mbEXPMeansNA)
R1mbSPHMeansNAOM<-na.omit(R1mbSPHMeansNA)


##ObsKMeansNAOM<-na.omit(ObsKMeansNA)
#WRFMeansNAOM<-na.omit(WRFMeansNA)
#KFMeansNAOM<-na.omit(KFMeansNA)

EXPMeansNAOM<-na.omit(EXPMeansNA)#
SPHMeansNAOM<-na.omit(SPHMeansNA)

R1EXPMeansNAOM<-na.omit(R1EXPMeansNA)
R1SPHMeansNAOM<-na.omit(R1SPHMeansNA)


##write.csv(mbObsKMeansNAOM, file="F:\\KrIC2\\maps\\")
#write.table(mbWRFMeansNAOM, file="F:\\KrIC2\\maps\\FIXMAXmbWRF.csv", 
#            sep=",",  row.names=FALSE, col.names=FALSE)
#write.table(mbKFMeansNAOM, file="F:\\KrIC2\\maps\\FIXMAXmbKF.csv", 
 #           sep=",",  row.names=FALSE, col.names=FALSE)

write.table(mbEXPMeansNAOM, file="F:\\KrIC2\\maps\\FIXMAXmbEXP.csv", 
            sep=",",  row.names=FALSE, col.names=FALSE)#
write.table(mbSPHMeansNAOM, file="F:\\KrIC2\\maps\\FIXMAXmbSPH.csv", 
            sep=",",  row.names=FALSE, col.names=FALSE)

write.table(R1mbEXPMeansNAOM, file="F:\\KrIC2\\maps\\FIXMAXmbR1EXP.csv", 
           sep=",",  row.names=FALSE, col.names=FALSE)
write.table(R1mbSPHMeansNAOM, file="F:\\KrIC2\\maps\\FIXMAXmbR1SPH.csv", 
            sep=",",  row.names=FALSE, col.names=FALSE)



##write.csv(ObsKMeansNAOM, file="F:\\KrIC2\\maps\\")
#write.table(WRFMeansNAOM, file="F:\\KrIC2\\maps\\FIXMAXR1WRF.csv", 
 #           sep=",",  row.names=FALSE, col.names=FALSE)
#write.table(KFMeansNAOM, file="F:\\KrIC2\\maps\\FIXMAXR1KF.csv", 
 #           sep=",",  row.names=FALSE, col.names=FALSE)
write.table(EXPMeansNAOM, file="F:\\KrIC2\\maps\\FIXMAXREXP.csv", 
            sep=",",  row.names=FALSE, col.names=FALSE)
write.table(SPHMeansNAOM, file="F:\\KrIC2\\maps\\FIXMAXRSPH.csv", 
            sep=",",  row.names=FALSE, col.names=FALSE)
write.table(R1EXPMeansNAOM, file="F:\\KrIC2\\maps\\FIXMAXR1EXP.csv", 
            sep=",",  row.names=FALSE, col.names=FALSE)
write.table(R1SPHMeansNAOM, file="F:\\KrIC2\\maps\\FIXMAXR1SPH.csv", 
            sep=",",  row.names=FALSE, col.names=FALSE)



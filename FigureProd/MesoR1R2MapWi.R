#INCLUDING R1 IN FINISHED MAP RESULTS
#NOTE, DISCOVERED AN ERROR IN RMSE EXP AND FIXING WITH THIS RUN

#NOTE DUE TO SMALL TRIAL MISLABEL, KF->UK IN OUTPUT FILES
WRFLOI<- read.csv("F:\\KrIC2\\maps\\BTsqwrfID.txt", header=FALSE)
KFLOI<- read.csv("F:\\KrIC2\\maps\\BTsqKalID.txt", header=FALSE)
EXPLOI<- read.csv("F:\\KrIC2\\maps\\BTsqpKalID.txt", header=FALSE)
SPHLOI<- read.csv("F:\\KrIC2\\maps\\SphBTsqpKalID.txt", header=FALSE)

R1EXPLOI<- read.csv("F:\\KrIC2\\maps\\R1ExpBTsqpKalID.txt", header=FALSE)
R1SPHLOI<- read.csv("F:\\KrIC2\\maps\\R1SphBTsqpKalID.txt", header=FALSE)

cots<- read.csv("F:\\KrIC2\\maps\\BTtickArray.txt", header=FALSE)

MetMad<- read.csv("C:\\Users\\alex\\Desktop\\Storm3Test\\MetMadMeso.txt", header=FALSE)


WRFLOI[WRFLOI==10^6] <- NA
WRFMeansLOI<-rowSums(WRFLOI,na.rm=TRUE)

KFLOI[KFLOI==10^6] <- NA
KFMeansLOI<-rowSums(KFLOI,na.rm=TRUE)

EXPLOI[EXPLOI==10^6] <- NA
EXPMeansLOI<-rowSums(EXPLOI,na.rm=TRUE)

SPHLOI[SPHLOI==10^6] <- NA
SPHMeansLOI<-rowSums(SPHLOI,na.rm=TRUE)

R1EXPLOI[R1EXPLOI==10^6] <- NA
R1EXPMeansLOI<-rowSums(R1EXPLOI,na.rm=TRUE)

R1SPHLOI[R1SPHLOI==10^6] <- NA
R1SPHMeansLOI<-rowSums(R1SPHLOI,na.rm=TRUE)


cots[cots==0] <- NA
cotsMeans<-rowSums(cots,na.rm=TRUE)

WRFR<-sqrt(WRFMeansLOI/cots)
KFR<-sqrt(KFMeansLOI/cots)

EXPR<-sqrt(EXPMeansLOI/cots)
SPHR<-sqrt(SPHMeansLOI/cots)

R1EXPR<-sqrt(R1EXPMeansLOI/cots)
R1SPHR<-sqrt(R1SPHMeansLOI/cots)


mbKFLOI<- read.csv("F:KrIC2\\maps\\BTKalID.txt", header=FALSE)
mbWRFLOI<- read.csv("F:\\KrIC2\\maps\\BTwrfID.txt", header=FALSE)

mbEXPLOI<- read.csv("F:KrIC2\\maps\\BTpKalID.txt", header=FALSE)
mbSPHLOI<- read.csv("F:\\KrIC2\\maps\\SphBTpKalID.txt", header=FALSE)

R1mbEXPLOI<- read.csv("F:KrIC2\\maps\\R1eXPBTpKalID.txt", header=FALSE)
R1mbSPHLOI<- read.csv("F:\\KrIC2\\maps\\R1SphBTpKalID.txt", header=FALSE)


mbKFLOI[mbKFLOI==10^6] <- NA
mbWRFLOI[mbWRFLOI==10^6] <- NA
mbEXPLOI[mbEXPLOI==10^6] <- NA
mbSPHLOI[mbSPHLOI==10^6] <- NA

R1mbEXPLOI[R1mbEXPLOI==10^6] <- NA

R1mbSPHLOI[R1mbSPHLOI==10^6] <- NA


mbWRFMeansLOI<-rowMeans(mbWRFLOI,na.rm=TRUE)
mbKFMeansLOI<-rowMeans(mbKFLOI,na.rm=TRUE)

mbEXPMeansLOI<-rowMeans(mbEXPLOI,na.rm=TRUE)
mbSPHMeansLOI<-rowMeans(mbSPHLOI,na.rm=TRUE)

R1mbEXPMeansLOI<-rowMeans(R1mbEXPLOI,na.rm=TRUE)
R1mbSPHMeansLOI<-rowMeans(R1mbSPHLOI,na.rm=TRUE)


write.csv(mbWRFMeansLOI, file="F:\\KrIC2\\maps\\WINDmbWRFv2.csv")
write.csv(mbKFMeansLOI, file="F:\\KrIC2\\maps\\WINDmbKFv2.csv")
write.csv(mbEXPMeansLOI, file="F:\\KrIC2\\maps\\WINDmbEXPv2.csv")
write.csv(mbSPHMeansLOI, file="F:\\KrIC2\\maps\\WINDmbSPHv2.csv")

write.csv(R1mbEXPMeansLOI, file="F:\\KrIC2\\maps\\WINDmbR1EXPv2.csv")
write.csv(R1mbSPHMeansLOI, file="F:\\KrIC2\\maps\\WINDmbR1SPHv2.csv")


write.csv(WRFR, file="F:\\KrIC2\\maps\\WINDRWRFv2.csv")
write.csv(KFR, file="F:\\KrIC2\\maps\\WINDRKFv2.csv")
write.csv(EXPR, file="F:\\KrIC2\\maps\\WINDREXPv2.csv")
write.csv(SPHR, file="F:\\KrIC2\\maps\\WINDRSPHv2.csv")

write.csv(R1EXPR, file="F:\\KrIC2\\maps\\WINDR1EXPv2.csv")
write.csv(R1SPHR, file="F:\\KrIC2\\maps\\WINDR1SPHv2.csv")
#NEED TO MAKE EDITS IN EXCEL AFTER


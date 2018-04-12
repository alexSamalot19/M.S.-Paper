#Issues/manual inputs
#DO NOT RUN CODE UNTIL A BREAKER FOR SIZE, AND DETERMINE SIZE OF 3/3

#Read Bias>>
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
#STOP AND PUT IN DIMENSIONS
# #<<



# #Histogram>>
W1o3C1<-W1o3KF$V1#CLASS CORRECTION
TNW1o3C1<-seq(min(W1o3C1), max(W1o3C1), length.out=1286736)#I2theoNorm
yfit <-dnorm(TNW1o3C1, mean=mean(W1o3C1),sd=sd(W1o3C1))#TheoNormWind1/3
hsUp1<-hist(W1o3C1,breaks=100,xlab="KF Wind Speed Bias (m/s)",
            main="Distribution of KF Bias")#PlotNorm
yfit <- yfit * diff(hsUp1$mids[1:2]) * length(W1o3C1)#CreationOfDistDat
lines(TNW1o3C1, yfit, col = "black", lwd = 2)#PlotDist
# #<<

# #Measure Skewness>>
library(e1071)
skewness(W1o3C1)
kurtosis(W1o3C1)
#STOP AND RECORD STATS
# #<<


# #Trim Data for 95/5>>
quantile(W1o3C1,c(0.025,0.975))#DtmnDataRang

#STOP AND EDIT BOUNDS

lW1o3C1955lb<-W1o3C1[W1o3C1>-4.0366]
lW1o3C1955<-lW1o3C1955lb[lW1o3C1955lb<5.2712]
#^NewVarforWithinRange
# #<<

W1o3C1955<-as.matrix(lW1o3C1955)


dim(W1o3C1955)
#STOP AND PUT IN DIMENSIONS



# #Histogram 95/5>>
#W1o3C1<-W1o3$V1#CLASS CORRECTION
TNW1o3C1955<-seq(min(W1o3C1955), max(W1o3C1955), length.out=1222397)#I2theoNorm
yfit <-dnorm(TNW1o3C1955, mean=mean(W1o3C1955),sd=sd(W1o3C1955))#TheoNormWind1/3
hsUp1955<-hist(W1o3C1955,breaks="FD",xlab="KF Wind Speed Bias (m/s)",
               main="Distribution of KF Bias")#PlotNorm
yfit <- yfit * diff(hsUp1955$mids[1:2]) * length(W1o3C1955)#CreationOfDistDat
lines(TNW1o3C1955, yfit, col = "black", lwd = 2)#PlotDist
# #<<



# #Measure Skewness>>
library(e1071)
skewness(W1o3C1)

skewness(W1o3C1955)
# #<<


# #Make adjusted QQ plot to show effect of removing outliers>>
qqnorm(W1o3C1955, main="Normal Q-Q Plot of KBOS KF Bias within 95% Confidence")
qqline(W1o3C1955)
# #<<




library(BSDA)
SIGN.test(as.numeric(W1o3C1955),conf.level=0.95)
mean(W1o3C1955)
SIGN.test(as.numeric(W1o3C1955),md=mean(W1o3C1955),alternative="two.sided",conf.level=0.95)


# #Trim Data for oUTLIERS>>
outliersValue<-boxplot.stats(W1o3C1)$out
noOut<-W1o3C1[!W1o3C1 %in% outliersValue]

W1o3C1OUT<-as.matrix(noOut)
class(W1o3C1OUT)
head(W1o3C1OUT)
dim(W1o3C1OUT)
#^NewVarforWithinRange
# #<<


# #Histogram outliers>>
#W1o3C1<-W1o3$V1#CLASS CORRECTION
TNW1o3C1OUT<-seq(min(W1o3C1OUT), max(W1o3C1OUT), length.out=1248401)#I2theoNorm
yfit <-dnorm(TNW1o3C1OUT, mean=mean(W1o3C1OUT),sd=sd(W1o3C1OUT))#TheoNormWind1/3
hsUp1OUT<-hist(W1o3C1OUT,xlab="KF Wind Speed Bias (m/s)",
               main="Distribution of KF Bias")#PlotNorm
yfit <- yfit * diff(hsUp1OUT$mids[1:2]) * length(W1o3C1OUT)#CreationOfDistDat
lines(TNW1o3C1OUT, yfit, col = "black", lwd = 2)#PlotDist
# #<<

library(e1071)
skewness(W1o3C1OUT)
kurtosis(W1o3C1OUT)
# #<<
# #Make adjusted QQ plot to show effect of removing outliers>>
qqnorm(W1o3C1OUT, main="Normal Q-Q Plot of KBOS KF Bias Without Outliers")
qqline(W1o3C1OUT)
# #<<




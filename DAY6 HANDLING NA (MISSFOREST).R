library(missForest)
iris

iris.mis <- prodNA(iris, noNA = 0.1)
DATANOOUTLIER=iris.mis
summary(DATANOOUTLIER)
DATA

# HANDLING NA
if(nrow(DATANOOUTLIER[!complete.cases(DATANOOUTLIER),])==0)
{
  DATANONA=DATANOOUTLIER
}else{
  DATANONA=missForest(DATANOOUTLIER)
  DATANONA=as.data.frame(DATANONA[[1]])
}


summary(DATANONA)

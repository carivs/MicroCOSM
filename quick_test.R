

coverage <- read.table("C:/Users/carivs/MicroCOSM/1_ModelCoverage.txt")[,(2010-1985+1):136]



coverage$num <- rep(1:30, each=18)
#coverageOLD <- coverage

coverageL <- split(coverage, coverage$num)


HPVtestsNEW <- apply(coverageL[[4]]+coverageL[[5]]+coverageL[[6]], 2, sum)

ColposcopiesNEW <- apply(coverageL[[7]]+coverageL[[8]]+coverageL[[9]], 2, sum)

LLETZNEW <- apply(coverageL[[10]]+coverageL[[11]]+coverageL[[12]], 2, sum)
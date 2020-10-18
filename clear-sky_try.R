setwd('E:/Szakdoga/Naperõmû/szakdoga py/pcsol')

source('R_code/clearSky.R')
source('R_code/csMother.R')

install.packages("solaR")

###
load('data_example/cabauw.RData')

BSRNcc <- read.csv('data_example/stations.csv')

cabauwASHRAE <- clearSky(meteo = cabauw, loc = BSRNcc[1, ], model = "ASHRAE1972")

plot(cabauwASHRAE$G0, cabauw$G0, xlab = 'model', ylab = 'measurements')


################################################################################
cabauw

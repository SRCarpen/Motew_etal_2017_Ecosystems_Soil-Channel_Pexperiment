# Read files for Soil P experiment and arrange them for WQ calculation
# SRC 2016-02-28

rm(list = ls())
graphics.off()

# Read data
# Col 1 is year
# Then there are 5 blocks of 4 lake DD loads each
cname=(1:21)
# Choose input data; remember to change output file name
#Raw = read.csv('Lake_P_experiment_Final_2016-07-06.csv',header=F,col.names=cname) # original
Raw = read.csv('Lake_P_experiment_Final_variedChannelP_2016-07-10.csv',header=F,col.names=cname)
Xraw = as.matrix(Raw)

Year = Xraw[,1]
xpt1 = Xraw[,2:5]
xpt2 = Xraw[,6:9]
xpt3 = Xraw[,10:13]
xpt4 = Xraw[,14:17]
xpt5 = Xraw[,18:21]

DDL.all = rbind(xpt1,xpt2,xpt3,xpt4,xpt5)

DDL.Me = DDL.all[,1]
DDL.Mo = DDL.all[,2]
DDL.Wa = DDL.all[,3]
DDL.Ke = DDL.all[,4]

# Save for WQ calc
save(Year,DDL.Me,DDL.Mo,DDL.Wa,DDL.Ke,file='SoilPExpDDL_VCP.Rdata')

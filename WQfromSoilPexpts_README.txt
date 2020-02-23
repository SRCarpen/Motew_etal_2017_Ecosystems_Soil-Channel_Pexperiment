# Columns are:
# LakeID 1 = Mendota, 2 = Monona, 3 = Waubesa, 4 = Kegonsa
# Experiment number 1 through 5
# Year
# Direct drainage load, kg/y
# Total load, kg/y
# summer [TP], mg/L
# summer [Chl a], ug/L
# summer Secchi transparency, m
# probability of hypereutrophy
# P export from the lake, kg/y

# Remember to rename data files as - or + Daphnia!
# R data file
save(WQ.expts,file='WQfromSoilPExpts.Rdata') 
# CSV file
write.csv(WQ.expts,file='WQfromSoilPExpts.csv')
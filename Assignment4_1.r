


# PARSING JSON TO DATA FRAME
js<-'{
"name": null, "release_date_local": null, "title": "3 (2011)",
"opening_weekend_take": 1234, "year": 2011,
"release_date_wide": "2011-09-16", "gross": 59954
}'
jsdf <- as.data.frame(js)
str(jsdf)


#VARIABLE BINNING
RandomNumbers <- floor(rnorm(100, 50, 12))#sample data for binning
breaks <- c(0,10,20,30,40,50,60,70,80,90)# set up boundaries for intervals/bins
labels <- c("<10", "10-20", "20-30", "30-40", "40-50", "50-60","70-80","80-90",">=90")# specify interval/bin labels
bins <- cut(RandomNumbers, breaks, include.lowest = T, right=FALSE, labels=labels)# bucketing data points into bins
summary(bins)# inspect bins
plot(bins, main="Frequency", ylab="count",col="bisque")#plotting the count of elements in each bin

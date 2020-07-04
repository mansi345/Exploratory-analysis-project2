baltdata <- NEI_data[NEI_data$fips=="24510", ]
baltYrEmm <- aggregate(Emissions ~ year, baltdata, sum)
cols1 <- c("maroon", "yellow", "orange", "Aquamarine")
barplot(height=baltYrEmm$Emissions/1000, names.arg=baltYrEmm$year, xlab="Year", ylab=expression('Aggregated Emission'),main=expression('Baltimore Aggregated PM'[2.5]*' Emmissions by Year'), col = cols1)
dev.copy(png,'plot2.png')
dev.off()
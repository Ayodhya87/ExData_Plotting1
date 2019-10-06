> dataset<-"./R_Home/household_power_consumption.txt"
> head(dataset)
[1] "./R_Home/household_power_consumption.txt"
> data<-read.table(dataset,header = TRUE,sep = ";",stringsAsFactors = FALSE,dec = ".")
> head(data)
        Date     Time Global_active_power
1 16/12/2006 17:24:00               4.216
2 16/12/2006 17:25:00               5.360
3 16/12/2006 17:26:00               5.374
4 16/12/2006 17:27:00               5.388
5 16/12/2006 17:28:00               3.666
6 16/12/2006 17:29:00               3.520
  Global_reactive_power Voltage Global_intensity
1                 0.418 234.840           18.400
2                 0.436 233.630           23.000
3                 0.498 233.290           23.000
4                 0.502 233.740           23.000
5                 0.528 235.680           15.800
6                 0.522 235.020           15.000
  Sub_metering_1 Sub_metering_2 Sub_metering_3
1          0.000          1.000             17
2          0.000          1.000             16
3          0.000          2.000             17
4          0.000          1.000             17
5          0.000          1.000             17
6          0.000          2.000             17
> dataSubSet<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
> head(dataSubSet)
          Date     Time Global_active_power Global_reactive_power Voltage Global_intensity Sub_metering_1
66637 1/2/2007 00:00:00               0.326                 0.128 243.150            1.400          0.000
66638 1/2/2007 00:01:00               0.326                 0.130 243.320            1.400          0.000
66639 1/2/2007 00:02:00               0.324                 0.132 243.510            1.400          0.000
66640 1/2/2007 00:03:00               0.324                 0.134 243.900            1.400          0.000
66641 1/2/2007 00:04:00               0.322                 0.130 243.160            1.400          0.000
66642 1/2/2007 00:05:00               0.320                 0.126 242.290            1.400          0.000
      Sub_metering_2 Sub_metering_3
66637          0.000              0
66638          0.000              0
66639          0.000              0
66640          0.000              0
66641          0.000              0
66642          0.000              0
> globalActivePower<-as.numeric(dataSubSet$Global_active_power)
> png("plot1.png",width=480,height=480)
> hist(globalActivePower,col="red",main="Global Active Power",xlab = "Global Active Power (kilowatts)")
> dev.off()

## Import shared plot functions: `load.data`, `with.output.to.png`.
source("util.R")

plot3 <- function(d) {
        plot(d$datetime, d$Sub_metering_1, type="l", col="black",
             xlab="", ylab="Energy sub metering")
        lines(d$datetime, d$Sub_metering_2, type="l", col="red")
        lines(d$datetime, d$Sub_metering_3, type="l", col="blue")
        legend("topright",
               legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
               col=c("black", "red", "blue"), lty=1)
}

if (!interactive()) {
        d <- load.data("household_power_consumption.zip")
        with.output.to.png("plot3", plot3(d))
}
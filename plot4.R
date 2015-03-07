## Import shared plot functions: `load.data`, `with.output.to.png`.
source("util.R")

plot4.1 <- function(d) {
        plot(d$datetime, d$Global_active_power, type="l",
             xlab="", ylab="Global Active Power")
}

plot4.2 <- function(d) {
        plot(d$datetime, d$Voltage, type="l",
             xlab="datetime", ylab="Voltage")
}

plot4.3 <- function(d) {
        plot(d$datetime, d$Sub_metering_1, type="l", col="black",
             xlab="", ylab="Energy sub metering")
        lines(d$datetime, d$Sub_metering_2, type="l", col="red")
        lines(d$datetime, d$Sub_metering_3, type="l", col="blue")
        legend("topright",
               legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
               col=c("black", "red", "blue"), lty=1, bty="n")
}

plot4.4 <- function(d) {
        plot(d$datetime, d$Global_reactive_power, type="l",
             xlab="datetime", ylab="Global_reactive_power")
}

plot4 <- function(d) {
        old.mfrow <- par("mfrow")
        par(mfrow=c(2, 2))
        plot4.1(d)
        plot4.2(d)
        plot4.3(d)
        plot4.4(d)
        par(mfrow=old.mfrow)
}

if (!interactive()) {
        d <- load.data("household_power_consumption.zip")
        with.output.to.png("plot4", plot4(d))
}
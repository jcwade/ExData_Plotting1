## Import shared plot functions: `load.data`, `with.output.to.png`.
source("util.R")

plot1 <- function(d) {
        hist(d$Global_active_power, main="Global Active Power", col="red",
             xlab="Global Active Power (kilowatts)", xaxt="n")
        axis(1, at=seq(0, 6, by=2))
}

if (!interactive()) {
        d <- load.data("household_power_consumption.zip")
        with.output.to.png("plot1", plot1(d))
}
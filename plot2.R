## Import shared plot functions: `load.data`, `with.output.to.png`.
source("util.R")

plot2 <- function(d) {
        plot(d$datetime, d$Global_active_power, type="l",
             xlab="", ylab="Global Active Power (kilowatts)")
}

if (!interactive()) {
        d <- load.data("household_power_consumption.zip")
        with.output.to.png("plot2", plot2(d))
}
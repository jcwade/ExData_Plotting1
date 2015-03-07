library(dplyr)
library(lubridate)

load.data <- function(zipfile) {
	start <- ymd("2007-02-01")
	end   <- ymd("2007-02-02")

	con <- unz(zipfile, "household_power_consumption.txt")
	
	read.csv(con, sep=";", na.strings=c("?")) %>%
	        mutate(Date=dmy(Date)) %>%
	        filter(start <= Date & Date <= end) %>%
		mutate(datetime=Date + hms(Time))
}

with.output.to.png <- function(base, thunk) {
        path <- paste0(base, ".png")
        png(path, width=480, height=480)
        thunk
        dev.off()
}

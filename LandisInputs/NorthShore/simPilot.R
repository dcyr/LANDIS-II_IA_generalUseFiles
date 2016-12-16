rm(list =ls())
setwd("~/Dropbox/NorthShore/")

simInfo <- read.csv("simInfo.csv", colClasses = c(simDir = "character"))
simDir <- simInfo$simDir

n <- floor(detectCores() * 0.90)

require()
foreach(i = 1:n) %dopar% {
    system(paste0("landis ", simDir, "/scenario.txt"))
}

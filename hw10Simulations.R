ff <- function(o){
     flips <- sample(c("H", "T"), 100, replace = T)
     word <- paste(flips, collapse = "")
     
     
     flPairs <- matrix(0, nrow = 100, ncol = 2)
     for(i in 1:(length(flips) -2)){
          flPairs[i,] <- c(flips[i], flips[i + 1])
     }
     
     flPairs
     dat <- paste(flPairs[,1], flPairs[,2], sep = "")
     
     lengths <- grep("HT", x = dat) + 1
     lengths[1]
}

mean(replicate(10000, ff()))



fh <- function(o){
     flips <- sample(c("H", "T"), 100, replace = T)
     word <- paste(flips, collapse = "")
     
     
     flPairs <- matrix(0, nrow = 100, ncol = 2)
     for(i in 1:(length(flips) -2)){
          flPairs[i,] <- c(flips[i], flips[i + 1])
     }
     
     flPairs
     dat <- paste(flPairs[,1], flPairs[,2], sep = "")
     
     lengths <- grep("HH", x = dat) + 1
     lengths[1]
}

mean(replicate(10000, fh()))



firstHeads <- function(o){
     flips <- sample(c("H", "T"), size = 100, replace = TRUE)
     min(which(x = flips == "H"))
}

firstHeads()

mean(replicate(100000, firstHeads()))

#####

mu <- rnorm(n = 10000, mean = 100, sd = 15)
hist(mu)


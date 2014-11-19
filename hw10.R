x <- function(n){
     sd(rnorm(n = n))
} 

foo <- function(nn){
     mean(replicate(100000, x(nn)))
}

foo.vec <- Vectorize(foo)
nums <- floor(c((1:10)*15))
sds <- foo.vec(nums)
plot(sds~nums, ylim = c(0.98, 1), 
     xlab = "Number of samples", ylab = "Estimated SD", pch = 19)
abline(h = 1, lty = 3)
legend("bottomright", legend = "true sd", lty = 3)

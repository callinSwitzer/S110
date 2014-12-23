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



####### HW11

pnorm(32, mean = 18, sqrt(12*0.3^2), lower.tail = F)

pnorm(q = -2/(sqrt(1.08)), mean = 0 , sd = 1, lower.tail = F)


foo <- replicate(10000, sum(rgamma(12, shape = 75/3, rate = 50/3)))
mean(foo)
hist(foo)
sum(foo >= 16) / length(foo)


hist(rgamma(n = 10000, shape = 18*18/(0.3^2*12), rate = 18/(0.3^2*12)))

pgamma(q = 32, shape = 18*18/(0.3^2*12), rate = 18/(0.3^2*12), lower.tail = F)

pgamma(q = 32, shape = 300, rate = 50/3, lower.tail = F)

gg <- rgamma(n = 10000, shape = 1000, rate = 4)
hist(gg)
mean(gg)
var(gg)
1000/4^2

## 3

n = 1000
p = 1/2
foo <- rbinom(10000, n, prob = p )
hist(foo, freq = F, breaks = 50)

# normal approx
lines(x = seq(min(foo), max(foo), length = 100), 
      y = dnorm(x = seq(min(foo), to = max(foo), length = 100), 
                mean = n*p, sd = sqrt((1-p)*n*p)))
lines(density(foo), col = "red")



## 3b
n = 30
p = 0.4
foo <- rbinom(10000, n, prob = p )
hist(foo, freq = F, breaks = 20)

# normal approx
lines(x = seq(min(foo), max(foo), length = 100), 
      y = dnorm(x = seq(min(foo), to = max(foo), length = 100), 
                mean = n*p-0.5, sd = sqrt((1-p)*n*p)))
lines(density(foo), col = "red")
sum(foo <= 10) / length(foo)


pbinom(10, size = n, prob = p, lower.tail = T)

pnorm(q = 10, mean = n*p-0.5, sd = sqrt((1-p)*n*p))

pnorm(q = (10-n*p + 0.5)/sqrt((1-p)*n*p), mean = 0, 1)

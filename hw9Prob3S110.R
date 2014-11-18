X = rexp(100000, 1)
Y = rexp(100000, 1)
require(ggplot2)
df <- data.frame(X,Y)
ggplot(df, aes(x = X, Y))+
     geom_hex() + 
     theme_bw() + 
     labs(x = "X + Y", y="X/Y")


############
qexp(1-0.975, rate = 1/17, lower.tail = F)
ee <- rexp(n = 100000, rate = 1/17)
hist(ee)
mean(ee)

# shape = lambda
# scale = mean
qgamma(0.975, scale = 12, shape = (1/17)/12)
qgamma(1-0.975, scale = 12, shape = (1/17)/12)
gam <- rgamma(10000, shape = 12, rate = 12/17)
mean(gam)
sampExp <- function(o){
     rexp(12, rate = 1/17)
}
means <- replicate(100000, mean(sampExp()))
par(mfrow = c(2,1))
hist(means)
hist(rgamma(100000, shape =12,rate = 12/17))
qgamma(0.975, scale=12, shape = 12/17)
qgamma(1-0.975, scale=12, shape = 12/17)
sums <- replicate(100000, sum(sampExp()))
hist(sums)
hist(sums/12)
hist(rgamma(100000, shape = 12, rate = 12/17))
quantile(means, probs = c(0.025, 0.975))
quantile(rgamma(100000, shape = 12, rate = 12/17), probs = c(0.025, 0.975))
qgamma(p = 0.975, shape = 12, rate = 12/17)
hist(means)
hist(sums/12)
n = 12
qgamma(p = 1-0.975, shape = n, rate = n)*17

hist(rgamma(n = 100000, shape = 12, rate = 1/17))


childPar <- function(nchild = 6, npar = 2){
     parents <- rnorm(npar)
     children <- rnorm(nchild)
     sum(children > parents[1] & children > parents[2])
}

foo <- replicate(100000, childPar())
mean(foo)

uni <- function(o){
     X <- runif(1)
     Y <- runif(1)
     X-Y
     
}

uni()


foo <- replicate(10000, uni())

hist(foo)


childPar <- function(nchild = 6, npar = 2){
     parents <- rnorm(npar)
     children <- rnorm(nchild)
     sum(children > parents[1] & children > parents[2])
}

foo <- replicate(100000, childPar())
mean(foo)

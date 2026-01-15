# model parameters
dt <-  10**8
cp <- 10**10
S <- 1372
alpha <- 0.3
eps <- 0.61
sigma = 5.67*10**(-8)

## setting vectors
timeVect <- 1:500
TnVector <- vector(length = 500)

# starting condition temperature
Tn = 273  + 0
for (i in 1:500) {
  
  ## change of emssivity at 100
  
  if (i >= 100) eps <- 0.58
  if (i>= 300) alpha <- 0.335
  Ein <- S*(1-alpha)
  Eout <- 4*eps*sigma*(Tn**4)
  
  Tend <- dt/cp * (Ein - Eout)
  Tf <- Tn + Tend
  Tn <- Tf
  
  TnVector[i] <- Tn
}

plot(x = timeVect, TnVector - 273.15, type = "l", ylim = c(0, 30), xlab = "Time", ylab = "Temperature")

# starting condition temperature

# model parameters
dt <-  10**8
cp <- 10**10
S <- 1372
alpha <- 0.3
eps <- 0.61
sigma = 5.67*10**(-8)
Tn = 273  + 0
for (i in 1:500) {
  
  ## change of emssivity at 100
  
  if (i >= 100) eps <- 0.58
  #if (i>= 300) alpha <- 0.335
  Ein <- S*(1-alpha)
  Eout <- 4*eps*sigma*(Tn**4)
  
  Tend <- dt/cp * (Ein - Eout)
  Tf <- Tn + Tend
  Tn <- Tf
  
  TnVector[i] <- Tn
}
lines(x = timeVect, TnVector - 273.15, col = "red")



# starting condition temperature

# model parameters
dt <-  10**8
cp <- 10**10
S <- 1372
alpha <- 0.3
eps <- 0.61
sigma = 5.67*10**(-8)
Tn = 273  + 0
for (i in 1:500) {
  
  ## change of emssivity at 100
  
  #if (i >= 100) eps <- 0.58
  #if (i>= 300) alpha <- 0.335
  Ein <- S*(1-alpha)
  Eout <- 4*eps*sigma*(Tn**4)
  
  Tend <- dt/cp * (Ein - Eout)
  Tf <- Tn + Tend
  Tn <- Tf
  
  TnVector[i] <- Tn
}
lines(x = timeVect, TnVector - 273.15, col = "green")

# starting condition temperature

# model parameters
dt <-  10**8
cp <- 10**10
S <- 1372
alpha <- 0.3
eps <- 0.61
sigma = 5.67*10**(-8)


timeVect <- 1:500
TnVector <- vector(length = 500)
Tn = 273  + 0
for (i in 1:500) {
  
  ## change of emssivity at 100
  
  if (i >= 100) {eps <- 0.58 ; alpha <- 0.335}
  #if (i>= 300) 
  Ein <- S*(1-alpha)
  Eout <- 4*eps*sigma*(Tn**4)
  
  Tend <- dt/cp * (Ein - Eout)
  Tf <- Tn + Tend
  Tn <- Tf
  
  TnVector[i] <- Tn
}
lines(x = timeVect, TnVector - 273.15, col = "orange", lty = "dotted", lwd = 2)


## change in Cp ----------------

# model parameters
dt <-  10**8
cp <- 10**10
S <- 1372
alpha <- 0.3
eps <- 0.61
sigma = 5.67*10**(-8)

## setting vectors
timeVect <- 1:500
TnVector <- vector(length = 500)

# starting condition temperature
Tn = 273  + 0
for (i in 1:500) {
  
  ## change of emssivity at 100
  
  #if (i >= 100) eps <- 0.58
  #if (i>= 300) alpha <- 0.335
  Ein <- S*(1-alpha)
  Eout <- 4*eps*sigma*(Tn**4)
  
  Tend <- dt/cp * (Ein - Eout)
  Tf <- Tn + Tend
  Tn <- Tf
  
  TnVector[i] <- Tn
}

plot(x = timeVect, TnVector - 273.15, type = "l", ylim = c(0, 30), xlab = "Time", ylab = "Temperature")


# model parameters
dt <-  10**8
cp <- (10**10)*5
S <- 1372
alpha <- 0.3
eps <- 0.61
sigma = 5.67*10**(-8)

## setting vectors
timeVect <- 1:500
TnVector <- vector(length = 500)

# starting condition temperature
Tn = 273  + 0
for (i in 1:500) {
  
  ## change of emssivity at 100
  
  #if (i >= 100) eps <- 0.58
  #if (i>= 300) alpha <- 0.335
  Ein <- S*(1-alpha)
  Eout <- 4*eps*sigma*(Tn**4)
  
  Tend <- dt/cp * (Ein - Eout)
  Tf <- Tn + Tend
  Tn <- Tf
  
  TnVector[i] <- Tn
}

lines(x = timeVect, TnVector - 273.15, type = "l", ylim = c(0, 30), xlab = "Time", ylab = "Temperature")


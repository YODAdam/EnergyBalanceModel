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
  
  if(Tn < 273  + 0) alpha <- 0.62 else alpha <- 0.3
  Ein <- S*(1-alpha)
  Eout <- 4*eps*sigma*(Tn**4)
  
  Tend <- dt/cp * (Ein - Eout)
  Tf <- Tn + Tend
  Tn <- Tf
  
  TnVector[i] <- Tn
}

plot(x = timeVect, TnVector - 273.15, type = "l", ylim = c(-50, 40), xlab = "Time", ylab = "Temperature",
     main = "Ice albedo feedback")



# starting condition temperature
Tn = 273  - 5
for (i in 1:500) {
  
  if(Tn < 273  + 0) alpha <- 0.62 else alpha <- 0.3
  Ein <- S*(1-alpha)
  Eout <- 4*eps*sigma*(Tn**4)
  
  Tend <- dt/cp * (Ein - Eout)
  Tf <- Tn + Tend
  Tn <- Tf
  
  TnVector[i] <- Tn
}

lines(x = timeVect, TnVector - 273.15, col = "blue")
#plot(x = timeVect, TnVector - 273.15, col = "blue")


# starting condition temperature
Tn = 273  + 30
for (i in 1:500) {
  
  if(Tn < 273  + 0) alpha <- 0.62 else alpha <- 0.3
  Ein <- S*(1-alpha)
  Eout <- 4*eps*sigma*(Tn**4)
  
  Tend <- dt/cp * (Ein - Eout)
  Tf <- Tn + Tend
  Tn <- Tf
  
  TnVector[i] <- Tn
}

lines(x = timeVect, TnVector - 273.15, col = "red")


# starting condition temperature
Tn = 273  -40
for (i in 1:500) {
  
  if(Tn < 273  + 0) alpha <- 0.62 else alpha <- 0.3
  Ein <- S*(1-alpha)
  Eout <- 4*eps*sigma*(Tn**4)
  
  Tend <- dt/cp * (Ein - Eout)
  Tf <- Tn + Tend
  Tn <- Tf
  
  TnVector[i] <- Tn
}

lines(x = timeVect, TnVector - 273.15, col = "green3")


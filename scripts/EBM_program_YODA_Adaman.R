## constants values
S = 1372
alpha = 0.3
eps = 0.61
sigma = 5.67*10**(-8)

modelF <- function(S, alpha, eps, sigma) {
  
  value <- ( (S*(1-alpha))/(4*eps*sigma))**(1/4)
  return( value - 273.15)

}

## call the model

modelF(S = S, alpha = alpha, eps = eps, sigma = sigma)

## graph for diferent albedo ------

alphaValue = seq(0.0, 1, .01)
modelValue = modelF(S = S, alpha = alphaValue, eps = eps, sigma = sigma)

plot(alphaValue, modelValue, type = "l", xlab = "Albedo", ylab = "Temperature", main = "Albedo change")
alphaValue[modelValue < 0]  ## to bring global temp to 0 C we should increase albedo to 0.44

abline(h = 0, col = "green", lty = 2, lwd = 1)
abline(h = 15.49, col = "red", lty = 2, lwd = 1)
abline(v = 0.44, col = "green3", lty = 2, lwd = 1)
abline(v = 0.3, col = "red", lty = 2, lwd = 1)
text(x = 0.44, y = -50, labels = "0.44 new", col = "green")


## graph for diferent emissivity ------

epsValue = seq(0.0, 1, .01)
modelValue = modelF(S = S, alpha = alpha, eps = epsValue, sigma = sigma)

plot(epsValue, modelValue, type = "l", xlab = "Emissivity", ylab = "Temperature" , main = "Emissivity change")

epsValue[modelValue < 0] ## to reduice the temp to 0 c we should increase emissivity to 0.76
abline(h = 0, col = "red", lty = 2, lwd = 1)
abline(h = 15.49, col = "red", lty = 2, lwd = 1)
abline(v = 0.76, col = "green3", lty = 2, lwd = 1)
abline(v = 0.61, col = "red", lty = 2, lwd = 1)
text(x = 0.76, y = 100, labels = "0.76 new", col = "green")
#text(x = 0.61, y = 100, labels = "0.61 new", col = "green")
## question C

## graph for diferent albedo ------

alphaValue = seq(0.0, 1, .01)
modelValue = modelF(S = S, alpha = alphaValue, eps = eps, sigma = sigma)

plot(alphaValue, modelValue, type = "l", xlab = "Albedo", ylab = "Temperature", main = "Albedo change")
alphaValue[modelValue >= 18]  ## to bring global temp to 18 C we should increase albedo to 0.44

abline(h = 18, col = "green", lty = 2, lwd = 1)
abline(h = 15.49, col = "red", lty = 2, lwd = 1)
abline(v = 0.27, col = "green3", lty = 2, lwd = 1)
abline(v = 0.3, col = "red", lty = 2, lwd = 1)
text(x = 0.27, y = -50, labels = "0.27 new", col = "green")

## graph for diferent emissivity ------

epsValue = seq(0.0, 1, .01)
modelValue = modelF(S = S, alpha = alpha, eps = epsValue, sigma = sigma)

plot(epsValue, modelValue, type = "l", xlab = "Emissivity", ylab = "Temperature", main = "Emissivity change")

epsValue[modelValue >= 18] ## to reduice the temp to 0 c we should increase emissivity to 0.76
abline(h = 18, col = "red", lty = 2, lwd = 2)

abline(h = 18, col = "green", lty = 2, lwd = 1)
abline(h = 15.49, col = "red", lty = 2, lwd = 1)
abline(v = 0.58, col = "green3", lty = 2, lwd = 1)
abline(v = 0.61, col = "red", lty = 2, lwd = 1)
text(x = 0.58, y = 100, labels = "0.58 new", col = "green")

## Question d

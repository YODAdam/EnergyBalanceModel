library(readxl)

## constants values
S = 1372
alpha = 0.3
eps = 0.61
sigma = 5.67*10**(-8)
dt <- 1.0 * 10**21
cp <- 1.05*10**23
#k <- 0


## importing data

data <- read_excel(path = "data.xlsx")
data

Slat <- vector(length = nrow(data))
Ein <- vector(length = nrow(data))
Eout <- vector(length = nrow(data))
Trans <- vector(length = nrow(data))
Tend <- vector(length = nrow(data))
TlatF <- vector(length = nrow(data))
Latitude <- -seq(-85, 85, 10)
TimeLimit <- 1000
kvector <- seq(0, 50, 5)
TgMatrix <- matrix(nrow = TimeLimit, ncol = length(kvector))
ki <- 0
for (k in kvector) {
  
ki <- ki+1

Tg <- vector(length = TimeLimit)
Tlat <- data$T_init

for (t in  1:TimeLimit) {

Tg[t] <- mean(Tlat)

for (i in 1:length(Tlat)) {
  
  
  #data$albedo[i] <- 0.3
  
  #data$Sfrac[i] <- 1
  Slat[i] <- S*data$Sfrac[i]
  
  Ein[i] <- Slat[i] * (1 - data$albedo[i])
  Eout[i] <- 4*eps*sigma*Tlat[i]**4
  
  Trans[i] <- k*(Tlat[i] - Tg[t])
  Tend[i] <- dt/cp * (Ein[i] - Eout[i] - Trans[i])
  
  TlatF[i] <- Tlat[i] + Tend[i]
  Tlat[i] <- TlatF[i]
  
}
  
}

TgMatrix[,ki] <- Tg

}


plot(x = Latitude, Tlat - 273.15, type = "l")
plot(x = 1:TimeLimit, y = Tg - 273.15, type = "l")

TgDf <- as.data.frame(TgMatrix)
TgDf$Time <- 1:1000
names(TgDf) <-c(paste0("K=", kvector), "Time" )
TgDf |> as_tibble() |> 
  pivot_longer(cols = `K=0`:`K=50`, names_to = "K", values_to = "Tg") |> 
  ggplot(mapping = aes(x = Time, y = Tg - 273.15, colour = K)) +
  geom_line() +
  labs(
    x = "Time",
    y = "Tg [degree celcuis]",
    subtitle = "Effect of transport coeficient ok global temperature",
    caption = "@YodaAdaman"
  ) +
  theme_bw()



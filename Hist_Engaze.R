d = read.table(url('https://raw.githubusercontent.com/EmBro/SharedElectric/master/EngazeData1.csv'),
               dec = ',', sep = ';', header = T, row.names = 1)

hist(d$Promo, breaks = 10, main = 'How good do you find your DSO to be, 
     regarding promotion of renewable energy?', freq = F)
lines(density(d$Promo), # density plot
      lwd = 2, # thickness of line
      col = "chocolate3")
curve(dnorm(x, mean(d$Promo), sd(d$Promo)), add= T, col = 'darkblue', lw = 2)
abline(v = mean(d$Promo),
       col = "forestgreen",
       lwd = 2)
abline(v = median(d$Promo),
       col = "red",
       lwd = 2)
legend(x = "topleft", # location of legend within plot area
       c("Density", "Bell Curve", "Mean", "Median"),
       col = c("chocolate3", 'darkblue', "forestgreen", "red"),
       lwd = c(2, 2, 2))

hist(d$Behave, breaks = 10, main = 'How do you feel hearing about the need for us,
     to change our consumption behaviour?', freq = F)
lines(density(d$Behave), # density plot
      lwd = 2, # thickness of line
      col = "chocolate3")
curve(dnorm(x, mean(d$Behave), sd(d$Behave)), add= T, col = 'darkblue', lw = 2)
abline(v = mean(d$Behave),
       col = "forestgreen",
       lwd = 2)
abline(v = median(d$Behave),
       col = "red",
       lwd = 2)
legend(x = "topleft", # location of legend within plot area
       c("Density", "Bell Curve", "Mean", "Median"),
       col = c("chocolate3", 'darkblue', "forestgreen", "red"),
       lwd = c(2, 2, 2))

hist(d$Consumption, breaks = 10, main = 'How do you feel hearing about the need for us,
     to change our consumption behaviour?', freq = F)
lines(density(d$Consumption), # density plot
      lwd = 2, # thickness of line
      col = "chocolate3")
curve(dnorm(x, mean(d$Consumption), sd(d$Consumption)), add= T, col = 'darkblue', lw = 2)
abline(v = mean(d$Consumption),
       col = "forestgreen",
       lwd = 2)
abline(v = median(d$Consumption),
       col = "red",
       lwd = 2)
legend(x = "topleft", # location of legend within plot area
       c("Density", "Bell Curve", "Mean", "Median"),
       col = c("chocolate3", 'darkblue', "forestgreen", "red"),
       lwd = c(2, 2, 2))

hist(d$Personal, breaks = 10, main = 'How personal do you find consumption data to be?', freq = F)
lines(density(d$Personal), # density plot
      lwd = 2, # thickness of line
      col = "chocolate3")
curve(dnorm(x, mean(d$Personal), sd(d$Personal)), add= T, col = 'darkblue', lw = 2)
abline(v = mean(d$Personal),
       col = "forestgreen",
       lwd = 2)
abline(v = median(d$Personal),
       col = "red",
       lwd = 2)
legend(x = "topleft", # location of legend within plot area
       c("Density", "Bell Curve", "Mean", "Median"),
       col = c("chocolate3", 'darkblue', "forestgreen", "red"),
       lwd = c(2, 2, 2))


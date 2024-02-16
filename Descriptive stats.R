airquality<- datasets::airquality
head(airquality,10)
tail(airquality,10)
airquality[,c(1,2)] #only first two columns all rows
df<-airquality[,-6] #exclude 6th column
df
airquality$Wind

summary(airquality$Temp)

#points and lines
plot(airquality$Wind,xlab = 'ozone concentration',ylab = 'no of instances',main='ozone levels in NY City',col = 'blue')
plot(airquality$Wind,airquality$Temp,type = "p") # type= p points l = lines and b = both
plot(airquality)
#barplot
barplot(airquality$Ozone,main = 'Ozone Concentration in Air', ylab = 'ozone levels',col = 'blue',horiz = F,axes = T)

#histogram
hist(airquality$Temp)
hist(airquality$Temp,main='Solar radiation values in air',xlab = 'solar rad', col = 'blue')

#single boxplot
boxplot(airquality$Wind,main = "Boxplot")
boxplot.stats(airquality$Wind)$out. # outliers in the wind column 

#multiple boxplot
boxplot(airquality[,1:4], main = "Multiple")

par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty="o")

plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type = "l")
plot(airquality$Ozone,type = "l")
plot(airquality$Ozone,type = "l")
barplot(airquality$Ozone,main="Ozone concentration in air",xlab='ozone levels',col = 'green'',horiz = TRUE)



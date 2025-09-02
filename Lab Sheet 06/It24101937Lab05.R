setwd ("C:/Users/it24101937/Desktop/it24101937")

#distribution of X is Binominal since we have a fixed set of data

#P(X<=47)

pbinom(47 , 50 , 0.85 , lower.tail = TRUE)

#The random variable is number of calls recived in an hour  

#the distribution is a poisson distribution since we have a avarage count 

ppois(15 ,12)

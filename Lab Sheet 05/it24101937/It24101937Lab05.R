setwd("C:/Users/it24101937/Desktop/it24101937")
DeliveryTimes = read.table("Exercise - Lab 05.txt" , header = TRUE)

fix (DeliveryTimes)

names (DeliveryTimes) = c("x1")

attach(DeliveryTimes)


histogram= hist(x1 , main = "Delivery Times" , breaks = seq (20 , 70 , length = 8),right = TRUE)

breaks = round (histogram$breaks)

freq = histogram$counts


cum.freq = cumsum(freq)

new = c()

for (i in 1:length(breaks))
{
  if (i==1)
  {
    new[i] = 0
  }
  else 
  {
    new[i] = cum.freq[i-1]
  }
}

plot (breaks , new , type = 'l' , main = "delivary times frequency polygon" , xlab = "delivary time")



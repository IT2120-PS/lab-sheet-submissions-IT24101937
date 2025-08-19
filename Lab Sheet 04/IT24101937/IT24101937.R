setwd("C:/Users/it24101937/Desktop/IT24101937")
branchData = read.table("Exercise.txt" , header = TRUE , sep = " ")

fix(branchData)
attach(branchData)

boxplot(branchData$sales_x1 , main = "Box plot for sales" , outline = TRUE , ylab="sales" )

summary(branchData$advertising_x2)
IQR(X2)

findOutliers = function(x) {
  Q1 = quantile(x, 0.25)
  Q3 = quantile(x, 0.75)
  IQR = IQR(x)
  
  lower_bound = Q1 - 1.5 * IQR
  upper_bound = Q3 + 1.5 * IQR
  
  outliers = x[x < lower_bound | x > upper_bound]
  
  return(outliers)
}

outliers = findOutliers(X3)
print(outliers)

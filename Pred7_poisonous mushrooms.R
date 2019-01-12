#Loading the file
mushrooms1 <- read.csv("mushrooms.csv")
str(mushrooms1)

#Delete the Veil variable 
mushrooms$veil_type <- NULL

#Now we will check the distribution of class type
table(mushrooms$type)

#Installing the package
install.packages("RWeka")
library(RWeka)

#Training the model
mushroom1_1R <- OneR(type ~ ., data = mushrooms)
mushroom1_1R

summary(mushroom1_1R)

mushroom1_JRip <- JRip(type ~ ., data = mushrooms1)
mushroom1_JRip


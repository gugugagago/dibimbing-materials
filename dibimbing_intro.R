# Description: Basic introduction to R
# Author: Pararawendy Indarjo
# Date: 2021-05-22

# define variables
# tip: type Alt + - (dash) to make assignment operator <- 
# type Ctrl + Enter to execute the code line

# numeric variable
mynumber <- 3

# delete variable
rm(mynumber)

# character (string) variable
mychar1 <- "dibimbing"
mychar2 <-'data science bootcamp'
mychar3 <- 'John Wick is a "Boogyman"'

# check data type
typeof(mychar2)

# boolean variable (TRUE/FALSE)
mybool1 <- TRUE
mybool2 <- T
mybool3 <- FALSE
mybool4 <- F

# arithmetic operators
3 + 2 #5
3 - 2 #1
3 * 2 #6
3 / 2 #1.5
3 ^ 2 #9
3 %% 2 #1 (modulo)
9 %/% 2 #4 (integer part of division result)

# relational operators
3 < 2 #FALSE
3 > 2 #TRUE
3 <= 2 #FALSE
3 >= 2 #TRUE
2 >= 2 #TRUE
3 == 3 #TRUE
3 != 2 #TRUE

# logical operators
!TRUE #FALSE
TRUE & FALSE #FALSE
TRUE | FALSE #TRUE
mybool2 & !mybool4 #TRUE


# vector
myvect_num1 <- c(1,2,3,4,5)
myvect_num2 <- c(1,0,1,0,1)
myvect_chr <- c("A","B","C")

# check element data type
typeof(myvect_num1)
typeof(as.integer(myvect_num1))

# arithmetic operation between vectors
myvect_num1 + myvect_num2

# indexing (starts with 1)
myvect_num2[1] #1
myvect_num2[2] #0
myvect_num1[1:3] #1 2 3
myvect_num1[-1] #2 3 4 5


# built-in functions
abs(-3) #3
sqrt(9) #3
sin(pi) #~0 (computer float precision things :) )

sum(myvect_num1) #15
mean(myvect_num1) #3
min(myvect_num1) #1

# create vector of sequence of number using seq()
# tip: seeking help/documentation of a function
help(seq)
?seq

seq(10)
seq(1,10)
seq(0,10,2)

# install packages
# best practice: write this command directly on Console
install.packages("ggplot2") #popular visualization library

# load installed packages
library(ggplot2)

# test visualization
ggplot(mpg, aes(x = class, y = hwy)) +
  geom_boxplot() + 
  geom_jitter(shape=16, position = position_jitter(0.2))

# mini exercise
# 1. 1+2+3+...+1000=???
# 2. 3+6+9+...+999=???
# 3. average of the first 100 elements in sequence 2)
# 4. average of the last 100 elements in sequence 2)
  # hint: help(tail)

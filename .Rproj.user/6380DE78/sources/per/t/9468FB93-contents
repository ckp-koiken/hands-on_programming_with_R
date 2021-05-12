# RStudioではじめるRプログラミング入門の練習
# 第I部 プロジェクト1：ウェイトをかけたサイコロ


# 1章 基本中の基本 ---------------------------------------------------------------

1 + 1

100:130

5 - 1

#3 % 5

2 * 3

4 - 1

6 / (4 - 1)

(3 * (4 + 2) - 6) / 3

1:6

a <- 1
a
a + 2

die <- 1:6
die

Name <- 1
name <- 0
Name + 1

my_number <- 1
my_number
my_number <- 999
my_number

ls()

die - 1
die / 2
die * die

1:2
1:4
die
die + 1:2
die + 1:4

die %*% die
die %o% die

round(3.1415)
factorial(3)

mean(1:6)
mean(die)
round(mean(die))

sample(x = 1:4, size = 2)
sample(x = die, size = 1)
sample(x = die, size = 1)
sample(x = die, size = 1)
sample(die, size = 1)

# round(3.1415, corners = 2)
args(round)
round(3.1415, digits = 2)

sample(die, 1)
sample(size = 1, x = die)

sample(die, size = 2)
sample(die, size = 2, replace = TRUE)

dice <- sample(die, size = 2, replace = TRUE)
dice
sum(dice)
dice

die <- 1:6
dice <- sample(die, size = 2, replace = TRUE)
sum(dice)

roll <- function(){
  dice <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}
roll()
roll

dice
1 + 1
sqrt(2)
dice <- sample(die, size = 2, replace = TRUE)
two <- 1 + 1
a <- sqrt(2)

roll2 <- function(bones){
  dice <- sample(bones, size = 2, replace = TRUE)
  sum(dice)
}
roll2(bones = 1:4)
roll2(bones = 1:6)
roll2(1:20)

roll2 <- function(bones = 1:6){
  dice <- sample(bones, size = 2, replace = TRUE)
  sum(dice)
}
roll2()



# 2章 パッケージとヘルプページ ---------------------------------------------------------
library("ggplot2")
qplot

x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
x
y <- x^3
y
qplot(x, y)

x <- c(1, 2, 2, 2, 3, 3)
qplot(x, binwidth = 1)
x2 <- c(1, 1, 1, 1, 1, 2, 2, 2, 3, 3, 4)
qplot(x2, binwidth = 1)
x3 <- c(0, 1, 1, 2, 2, 2, 3, 3, 4)
qplot(x3, binwidth = 1)

replicate(3, 1 + 1)
replicate(10, roll())

rolls <- replicate(10000, roll())
qplot(rolls, binwidth = 1)

?sqrt
?log10
?sample
??log

roll <- function(){
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE, 
                 prob = c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8))
  sum(dice)
}
rolls <- replicate(10000, roll())
qplot(rolls, binwidth = 1)

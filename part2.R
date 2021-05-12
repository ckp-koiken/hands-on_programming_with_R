# RStudioではじめるRプログラミング入門の練習
# 第II部　プロジェクト2：トランプ


# 3章 Rのオブジェクト -------------------------------------------------------------

die <- c(1, 2, 3, 4, 5, 6)
die
is.vector(die)

five <- 5
five
is.vector(five)
length(five)
length(die)

int <- 1L
text <- "ace"
int <- c(1L, 5L)
text <- c("ace", "hearts")

sum(int)
#sum(text)

die <- c(1, 2, 3, 4, 5, 6)
die
typeof(die)

int <- c(-1L, 2L, 4L)
int
typeof(int)

sqrt(2)^2 - 2

text <- c("Hello", "World")
text
typeof(text)
typeof("Hello")

3 > 4
logic <- c(TRUE, FALSE, TRUE)
logic
typeof(logic)
typeof(F)

comp <- c(1 + 1i, 1 + 2i, 1 + 3i)
comp
typeof(comp)

raw(3)
typeof(raw(3))

hand <- c("ace", "king", "queen", "jack", "ten")
hand
typeof(hand)

attributes(die)

names(die)
names(die) <- c("one", "two", "three", "four", "five", "six")
names(die)
attributes(die)
die

die + 1
names(die) <- c("uno", "dos", "tres", "cuatro", "cinco", "seis")
die

names(die) <- NULL
die

dim(die) <- c(2, 3)
die

dim(die) <- c(3, 2)
die

dim(die) <- c(1, 2, 3)
die

m <- matrix(die, nrow = 2)
m

m <- matrix(die, nrow = 2, byrow = TRUE)
m
?matrix

ar <- array(c(11:14, 21:24, 31:34), dim = c(2, 2, 3))
ar

hand1 <- c("ace", "king", "queen", "jack", "ten", "spades", "spades", "spades", "spades", "spades")
matrix(hand1, nrow = 5)
matrix(hand1, ncol = 2)
dim(hand1) <- c(5, 2)
hand1

hand2 <- c("ace", "spades", "king", "spades", "queen", "spades", "jack", "spades", "ten", "spades")
matrix(hand2, nrow = 5, byrow = TRUE)
matrix(hand2, ncol = 2, byrow = TRUE)

dim(die) <- c(2, 3)
typeof(die)
class(die)
attributes(die)

class("Hello")
class(5)

now <- Sys.time()
now
typeof(now)
class(now)
unclass(now)

mil <- 1000000
mil
class(mil) <- c("POSIXct", "POSIXt")
mil

gender <- factor(c("male", "female", "female", "male"))
typeof(gender)
attributes(gender)
unclass(gender)
as.character(gender)

card <- c("ace", "hearts", "1")
card

sum(c(TRUE, TRUE, FALSE, FALSE))
sum(c(1, 1, 0, 0))

as.character(1)
as.logical(1)
as.numeric(FALSE)

list1 <- list(100:130, "R", list(TRUE, FALSE))
list1

card <- list("ace", "heart", 1)
card

df <- data.frame(face = c("ace", "two", "six"),
                 suit = c("clubs", "clubs", "clubs"), 
                 value = c(1, 2, 3)
                 )
df

list(face = "ace", suit = "hearts", value = 1)
c(face = "ace", suit = "hearts", value = 1)

typeof(df)
class(df)
str(df)

df <- data.frame(face = c("ace", "two", "six"),
                 suit = c("clubs", "clubs", "clubs"), value = c(1, 2, 3),
                 stringsAsFactors = TRUE)
str(df)

deck <- read.csv("~/Documents/fun/hands-on_programming_with_R/deck.csv")
head(deck)
head(deck, 10)

write.csv(deck, file = "cards.csv", row.names = FALSE)

# Rで元から使えるデータ群(付録D)
help(package = "datasets")

list.files()



# 4章 Rの記法 -----------------------------------------------------------------

head(deck)
deck[1, 1]
deck[1, c(1, 2, 3)]
deck[1, 1:3]

new <- deck[1, c(1, 2, 3)]
new

deck[c(1, 1), c(1, 2, 3)]

vec <- c(6, 1, 3, 6, 10, 5)
vec[1:3]

deck[1:2, 1:2]
deck[1:2, 1]
deck[1:2 , 1, drop = FALSE]

deck[-1, 1:3]
deck[-(2:52), 1:3]

#deck[c(-1, 1), 1]

deck[0, 0]

deck[1, ]

deck[1, c(TRUE, TRUE, FALSE)]
rows <- c(TRUE, F, F, F, F, F, F, F, F, F, F, 
          F, F, F, F, F, F, F, F, F, F, F, F, 
          F, F, F, F, F, F, F, F, F, F, F, F, 
          F, F, F, F, F, F, F, F, F, F, F, F, 
          F, F, F, F, F, F)
deck[rows, ]

deck[1, c("face", "suit", "value")]
deck[, "value"]

deal <- function(cards){
  cards[1, ]
}
deal(deck)
deal(deck)
deal(deck)

deck2 <- deck[1:52, ]
head(deck2)

deck3 <- deck2[c(2, 1, 3:52), ]
head(deck3)

random <- sample(1:52, size = 52)
random
deck4 <- deck[random, ]
head(deck4)

shuffle <- function(cards){
  random <- sample(1:52, size = 52)
  cards[random, ]
}
deal(deck)
deck2 <- shuffle(deck)
deal(deck2)

deck$value
mean(deck$value)
median(deck$value)

lst <- list(numbers = c(1, 2), logical = TRUE, strings = c("a", "b", "c"))
lst
lst[1]
#sum(lst[1]) #Rの関数はリストを操作しない場合が多い

lst$numbers
sum(lst$numbers)
lst[[1]]

lst["numbers"]
lst[["numbers"]]



# 5章 値の書き換え ---------------------------------------------------------------
deck2 <- deck

vec <- c(0, 0, 0, 0, 0, 0)
vec[1]
vec[1] <- 1000

vec[c(1, 3, 5)] <- c(1, 1, 1)
vec[4:6] <- vec[4:6] + 1
vec

deck2$new <- 1:52
head(deck2)
deck2$new <- NULL
head(deck2)

deck2[c(13, 26, 39, 52), ]
deck2[c(13, 26, 39, 52), 3]
deck2$value[c(13, 26, 39, 52)]

deck2$value[c(13, 26, 39, 52)] <- c(14, 14, 14, 14)
# deck2$value[c(13, 26, 39, 52)] <- 14
head(deck2, 13)

deck3 <- shuffle(deck)
head(deck3)

vec
vec[c(FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, FALSE)]

1 > 2
1 > c(0, 1, 2)
c(1, 2, 3) == c(3, 2, 1)

1 %in% c(3, 4, 5)
c(1, 2) %in% c(3, 4, 5)
c(1, 2, 3) %in% c(3, 4, 5)
c(1, 2, 3, 4) %in% c(3, 4, 5)

deck2$face
deck2$face == "ace"
sum(deck2$face == "ace")

deck3$value[deck3$face == "ace"]
deck3$value[deck3$face == "ace"] <- 14
head(deck3)

deck4 <- deck
deck4$value <- 0
head(deck4, 13)

deck4$suit == "hearts"
deck4$value[deck4$suit == "hearts"]
deck4$value[deck4$suit == "hearts"] <- 1
deck4$value[deck4$suit == "hearts"]

deck4[deck4$face == "queen", ]
deck4[deck4$suit == "spades", ]

a <- c(1, 2, 3)
b <- c(1, 2, 3)
c <- c(1, 2, 4)
a == b
b == c
a == b & b == c

deck4$face == "queen" & deck4$suit == "spades"
queenOfSpades <- deck4$face == "queen" & deck4$suit == "spades"
deck4[queenOfSpades, ]
deck4$value[queenOfSpades]
deck4$value[queenOfSpades] <- 13
deck4[queenOfSpades, ]
deck4$value[queenOfSpades]

w <- c(-1, 0, 1)
w > 0
x <- c(5, 15)
x > 10 & x < 20
y <- "February"
y == "February"
z <- c("Monday", "Tuesday", "Friday")
all(z %in% c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Satruday", "Sunday"))

deck5 <- deck
head(deck5, 13)
facecard <- deck5$face %in% c("king", "queen", "jack")
deck5[facecard, ]
deck5$value[facecard] <- 10
head(deck5, 13)

1 + NA
NA == 1

c(NA, 1:50)
mean(c(NA, 1:50))
mean(c(NA, 1:50), na.rm = TRUE)

# NA == NA
# c(1, 2, 3, NA) == NA

is.na(NA)
vec <- c(1, 2, 3, NA)
is.na(vec)

deck5$value[deck5$face == "ace"] <- NA
head(deck5, 13)


# 6章 環境 -------------------------------------------------------------------
deal(deck)
deal(deck)
deal(deck)
library(pryr)
parenvs(all = TRUE)

as.environment("package:stats")

globalenv()
baseenv()
emptyenv()

parent.env(globalenv())

# parent.env(emptyenv())

ls(emptyenv())
ls(globalenv())
ls.str(globalenv())

head(globalenv()$deck, 3)

assign("new", "Hello Global", envir = globalenv())
globalenv()$new

environment()

new
new <- "Hello Active"
new

show_env <- function(){
  list(ran.in = environment(), 
       parent = parent.env(environment()),
       objects = ls.str(environment()))
}

show_env()

environment(show_env)

environment(parenvs)

show_env <- function(){
  a <- 1
  b <- 2
  c <- 3
  list(ran.in = environment(), 
       parent = parent.env(environment()),
       objects = ls.str(environment()))
}
show_env()

foo <- "take me to your runtime"

show_env <- function(x = foo){
  list(ran.in = environment(), 
       parent = parent.env(environment()),
       objects = ls.str(environment()))
}
show_env()


deal <- function(){
  deck[1, ]
}
deal()
environment(deal)
deal()
deal()

DECK <- deck
deck <- deck[-1, ]
head(deck, 3)

deal <- function(){
  card <- deck[1, ]
  deck <- deck[-1, ]
  card
}
deal() 
# このdeckは実行時環境にコピーされたものなので，
# アクティブ環境のdeckに影響しない -> deck[-1, ]が機能しない
# assign関数を使ってアクティブ環境のdeckをいじる

deal <- function(){
  card <- deck[1, ]
  assign("deck", deck[-1, ], envir = globalenv())
  card
}
deal()
deal()
deal()

shuffle <- function(cards){
  random <- sample(1:52, size = 52)
  cards[random, ]
}
head(deck, 3)
a <- shuffle(deck)
head(deck, 3)
head(a, 3)

shuffle <- function(cards){
  random <- sample(1:52, size = 52)
  assign("deck", DECK[random, ], envir = globalenv())
}

shuffle()
deal()
deal()

setup <- function(deck){
  DECK <- deck
  
  DEAL <- function(){
    card <- deck[1, ]
    assign("deck", deck[-1, ], envir = globalenv())
    card
  }
  
  SHUFFLE <- function(){
    random <- sample(1:52, size = 52)
    assign("deck", DECK[random, ], envir = globalenv())
  }
}

setup <- function(deck){
  DECK <- deck
  
  DEAL <- function(){
    card <- deck[1, ]
    assign("deck", deck[-1, ], envir = globalenv())
    card
  }
  
  SHUFFLE <- function(){
    random <- sample(1:52, size = 52)
    assign("deck", DECK[random, ], envir = globalenv())
  }
  list(deal = DEAL, shuffle = SHUFFLE)
}

cards <- setup(deck)

deal <- cards$deal
shuffle <- cards$shuffle
deal
shuffle

# クロージャ
environment(deal)
environment(shuffle)

# グローバル環境ではなく実行時環境（親環境）を更新するようにする
setup <- function(deck){
  DECK <- deck
  
  DEAL <- function(){
    card <- deck[1, ]
    assign("deck", deck[-1, ], envir = parent.env(environment()))
    card
  }
  
  SHUFFLE <- function(){
    random <- sample(1:52, size = 52)
    assign("deck", DECK[random, ], envir = parent.env(environment()))
  }
  list(deal = DEAL, shuffle = SHUFFLE)
}

cards <- setup(deck)
deal <- cards$deal
shuffle <- cards$shuffle

# グローバル環境でdeckを削除したとしても，
# shuffle()とdeal()の親環境setup()のdeckを探すので問題ない
rm(deck)
shuffle()
deal()
deal()
deal()

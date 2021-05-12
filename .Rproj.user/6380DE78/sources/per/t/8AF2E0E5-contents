# RStudioではじめるRプログラミング入門の練習
# 第III部　プロジェクト3：スロットマシン


# 7章 プログラム ----------------------------------------------------------------

get_symbols <- function(){
  wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")
  sample(wheel, size = 3, replace = TRUE, 
         prob = c(0.03, 0.03, 0.06, 0.1, 0.25, 0.01, 0.52))
}
get_symbols()
get_symbols()
get_symbols()

# 目標物　score()関数とplay()関数
# score(c("DD", "DD", "DD"))

# play <- function(){

  # ステップ1：シンボルの生成
#   symbols <- get_symbols()

  # ステップ2：シンボルの表示
#   print(symbols)
  
  # ステップ3：シンボルのスコア計算
#   score(symbols)
# }

num <- -2

if (num < 0){
  num <- num * -1
}
num

num <- -4
if(num < 0){
  num <- num * -1
}
num

num <- -1
if(num < 0){
  print("num is negative. ")
  print("Don't worry, I'll fix it. ")
  num <- num * -1
  print("Now num is positive. ")
}
num

x <- 1
if(3 == 3){
  x <- 2
}
x

x <- 1
if(TRUE){
  x <- 2
}
x

x <- 1
if(x == 1){
  x <- 2
  if(x == 1){
    x <- 3
  }
}
x

a <- 3.14
dec <- a - trunc(a) #数値の整数部分を返すtrunc()関数
dec

if(dec >= 0.5){
  a <- trunc(a) + 1
} else {
  a <- trunc(a)
}
a

a <- 1
b <- 1
if(a > b){
  print("A wins!")
} else if(a < b){
  print("B wins!")
} else {
  print("Tie. ")
}


if(# 条件1：すべて同じシンボル){
  prize <- # 賞金をルックアップ
} else if(# 条件2：すべてバー){
  prize <- # 5ドル割り当て
} else {
  # チェリーの数を計算
  prize <- # 賞金を計算
}

# ダイヤを数える
# 必要に応じて賞金を2倍にする

score <- function(symbols){
  
  # 賞金計算
  
  prize
}

symbols <- c("7", "7", "7")
# symbols <- c("C", "DD", "0")

symbols
symbols[1] == symbols[2] & symbols[2] == symbols[3]
symbols[1] == symbols[2] & symbols[1] == symbols[3]
all(symbols == symbols[1])

# unique()関数でベクトルに含まれる別々な項をまとめたベクトルを返す
# 3つの要素が同じならunique(symbols)は長さ1のベクトルを返すはず
length(unique(symbols)) == 1

same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
if(same){
  prize <- # 賞金をルックアップ
  } else if(# 条件2：すべてバー){
    prize <- # 5ドル割り当て
    } else {
      # チェリーの数を計算
      prize <- # 賞金を計算
    }

# ダイヤを数える
# 必要に応じて賞金を2倍にする

symbols <- c("B", "BB", "BBB")
symbols[1] == "B" | symbols[1] == "BB" | symbols[1] == "BBB" &
symbols[2] == "B" | symbols[2] == "BB" | symbols[2] == "BBB" &
symbols[3] == "B" | symbols[3] == "BB" | symbols[3] == "BBB"

all(symbols %in% c(c("B", "BB", "BBB")))

same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")
if(same){
  prize <- # 賞金をルックアップ
} else if(all(bars)){
  prize <- # 5ドル割り当て
  } else {
    # チェリーの数を計算
    prize <- # 賞金を計算
  }

# ダイヤを数える
# 必要に応じて賞金を2倍にする

# 条件1がTRUEの場合，条件1は評価するものの，
# 条件2と3の部分をスキップする
symbols <- c("B", "BB", "BBB")
all(symbols %in% c("B", "BB", "BBB"))

if(same){
  symbol <- symbols[1]
  if(symbol == "DD"){
    prize <- 800
  } else if(symbol == "7"){
    prize <- 80
  } else if(symbol == "BBB"){
    prize <- 40
  } else if(symbol == "BB"){
    prize <- 5 #25じゃないの？
  } else if(symbol == "B"){
    prize <- 10
  } else if(symbol == "C"){
    prize <- 10
  } else if(symbol == "0"){
    prize <- 0
  }
}
# 流石に冗長

payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25, 
             "B" = 10, "C" = 10, "0" = 0)
payouts

payouts["DD"]
payouts["B"]

unname(payouts["DD"]) # 名称による添字操作をするためunname()関数を使う

symbols <- c("7", "7", "7")
symbols[1]
payouts[symbols[1]]

same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")
if(same){
  payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25, 
               "B" = 10, "C" = 10, "0" = 0)
  prize <- unname(payouts[symbols[1]])
} else if(all(bars)){
  prize <- 5
} else {
  # チェリーの数を計算
  prize <- # 賞金を計算
}

# ダイヤを数える
# 必要に応じて賞金を2倍にする

symbols <- c("C", "DD", "C")
symbols == "C"
sum(symbols == "C")
sum(symbols == "DD")

same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")
if(same){
  payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25, 
               "B" = 10, "C" = 10, "0" = 0)
  prize <- unname(payouts[symbols[1]])
} else if(all(bars)){
  prize <- 5
} else {
  cherries <- sum(symbols == "C")
  prize <- # 賞金を計算
}

diamonds <- sum(symbols == "DD")
# 必要に応じて賞金を2倍にする

# チェリーの賞金計算
if (cherries == 2) {
  prize <- 5
} else if (cherries == 1) {
  prize <- 2
} else {}
  prize <- 0
}
# これも冗長

c(0, 2, 5)[cherries + 1]
# cherriesは0になる可能性があるので添字として扱うために1を足す

same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")
if(same){
  payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25, 
               "B" = 10, "C" = 10, "0" = 0)
  prize <- unname(payouts[symbols[1]])
} else if(all(bars)){
  prize <- 5
} else {
  cherries <- sum(symbols == "C")
  prize <- c(0, 2, 5)[cherries + 1]
}

diamonds <- sum(symbols == "DD")
# 必要に応じて賞金を2倍にする

# scoreスクリプトの完成
same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")
if(same){
  payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25, 
               "B" = 10, "C" = 10, "0" = 0)
  prize <- unname(payouts[symbols[1]])
} else if(all(bars)){
  prize <- 5
} else {
  cherries <- sum(symbols == "C")
  prize <- c(0, 2, 5)[cherries + 1]
}

diamonds <- sum(symbols == "DD")
prize * 2 ^ diamonds # ダイアモンドの数だけ賞金を倍増
# scoreスクリプトの完成

# 場合の確定
same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")

# 賞金の計算
if(same){
  payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25, 
               "B" = 10, "C" = 10, "0" = 0)
  prize <- unname(payouts[symbols[1]])
} else if(all(bars)){
  prize <- 5
} else {
  cherries <- sum(symbols == "C")
  prize <- c(0, 2, 5)[cherries + 1]
}

# ダイヤによる賞金の加算
diamonds <- sum(symbols == "DD")
prize * 2 ^ diamonds # ダイアモンドの数だけ賞金を倍増


score <- function(symbols) {
  # 場合の確定
  same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
  bars <- symbols %in% c("B", "BB", "BBB")
  
  # 賞金の計算
  if(same){
    payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25, 
                 "B" = 10, "C" = 10, "0" = 0)
    prize <- unname(payouts[symbols[1]])
  } else if(all(bars)){
    prize <- 5
  } else {
    cherries <- sum(symbols == "C")
    prize <- c(0, 2, 5)[cherries + 1]
  }
  
  # ダイヤによる賞金の加算
  diamonds <- sum(symbols == "DD")
  prize * 2 ^ diamonds # ダイアモンドの数だけ賞金を倍増
}

play <- function() {
  symbols <- get_symbols()
  print(symbols)
  score(symbols)
}

play()
play()
play()


# 8章 S3 -------------------------------------------------------------------

oneplay <- play()
oneplay

num <- 1000000000
print(num)

class(num) <- c("POSIXct", "POISXt")
print(num)

# deck <- read.csv("~/Documents/fun/hands-on_programming_with_R/deck.csv")
# DECK <- deck
attributes(DECK)

row.names(DECK)
row.names(DECK) <- 101:152
levels(DECK) <- c("level 1", "level 2", "level 3")
attributes(DECK)

one_play <- play()
one_play
attributes(one_play)

attr(one_play, "symbols") <- c("B", "0", "B")
attributes(one_play)
attr(one_play, "symbols")

one_play
one_play + 1

play <- function() {
  symbols <- get_symbols()
  prize <- score(symbols)
  attr(prize, "symbols") <- symbols
  prize
}

play()
two_play <- play()
two_play

play <- function() {
  symbols <- get_symbols()
  structure(score(symbols), symbols = symbols)
}

three_play <- play()
three_play

slot_display <- function(prize) {
  
  # シンボルの抽出
  symbols <- attr(prize, "symbols")
  
  # symbolsを1つの文字列に変換
  symbols <- paste(symbols, collapse = " ")
  
  # シンボルと賞金額を正規表現として結合
  # \nは開業(つまりReturnまたはEnter)の正規表現
  string <- paste(symbols, prize, sep = "\n$")
  
  # クォートなしでコンソールに正規表現を表示
  cat(string)
}
slot_display(one_play)

symbols <- attr(one_play, "symbols")
symbols

symbols <- paste(symbols, collapse = " ")
symbols

prize <- one_play
string <- paste(symbols, prize, sep = "\n$")
string

cat(string) #\nを改行に置き換えて""を抜いて表示

slot_display(play())
slot_display(play())


print(pi)
pi
print(head(deck))
head(deck)
print(play())
play()

num <- 1000000000
print(num)
class(num) <- c("POSIXct", "POSIXt")
print(num)

print
print.POSIXct
print.factor

methods(print)


class(one_play) <- "slots"
args(print)
# slotsクラス用のprint関数のUseMethodを用意
print.slots <- function(x, ...) {
  cat("I'm using the print.slots method")
}
print(one_play)
one_play
rm(print.slots)

now <- Sys.time()
attributes(now)   

print.slots <- function(x, ...) {
  slot_display(x)
}
one_play

play <- function() {
  symbols <- get_symbols()
  structure(score(symbols), symbols = symbols, class = "slots")
}
class(play())
play()
play()

methods(class = "factor")

play1 <- play()
play1
play2 <- play()
play2
c(play1, play2) # オブジェクトにまとめるとクラス属性がなくなる

play1[1] #オブジェクトのサブセットを行うとクラス属性がなくなる


# 9章 ループ ------------------------------------------------------------------

die <- c(1, 2, 3, 4, 5, 6)
die

rolls <- expand.grid(die, die)
rolls

rolls$value <- rolls$Var1 + rolls$Var2
head(rolls, 3)

prob <- c("1" = 1/8, "2" = 1/8, "3" = 1/8, "4" = 1/8, "5" = 1/8, "6" = 3/8)
prob
rolls$Var1
prob[rolls$Var1]

rolls$prob1 <- prob[rolls$Var1]
head(rolls, 3)

rolls$prob2 <- prob[rolls$Var2]
head(rolls, 3)

rolls$prob <- rolls$prob1 * rolls$prob2
head(rolls, 3)

sum(rolls$value * rolls$prob)

wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")
combos <- expand.grid(wheel, wheel, wheel, stringsAsFactors = FALSE)
combos

get_symbols <- function() {
  wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")
  sample(wheel, size = 3, replace = TRUE,
         prob = c(0.03, 0.03, 0.06, 0.1, 0.25, 0.01, 0.52))
}
prob = c("DD" = 0.03, "7" = 0.03, "BBB" = 0.06, "BB" = 0.1, 
         "B" = 0.25, "C" = 0.01, "0" = 0.52)
combos$prob1 <- prob[combos$Var1]
combos$prob2 <- prob[combos$Var2]
combos$prob3 <- prob[combos$Var3]
head(combos, 3)

combos$prob <- combos$prob1 * combos$prob2 * combos$prob3
head(combos, 3)
sum(combos$prob)

for (value in c("My", "first", "for", "loop")) {
  print("one run")
}

for (value in c("My", "second", "for", "loop")) {
  print(value)
}
value

for (word in c("My", "second", "for", "loop")) {
  print(word)
}

for (string in c("My", "second", "for", "loop")) {
  print(string)
}

for (i in c("My", "second", "for", "loop")) {
  print(i)
}
# ループは呼び出した環境で実行するので，
# その環境にあったオブジェクトを上書きすることに注意

# forループはループの中でのみ意味を持つ
# 出力されない
for (value in c("My", "third", "for", "loop")) {
  value
}

chars <- vector(length = 4)
words <- c("My", "fourth", "for", "loop")
for (i in 1:4) {
  chars[i] <- words[i]
}
chars

combos$prize <- NA
head(combos, 3)
for (i in 1:nrow(combos)) {
  symbols <- c(combos[i, 1], combos[i, 2], combos[i, 3])
  combos$prize[i] <- score(symbols)
}
head(combos, 3)

sum(combos$prize * combos$prob)

# ダイヤをワイルドカードとして扱えるscoreの実装
score <- function(symbols) {
  
  diamonds <- sum(symbols == "DD")
  cherries <- sum(symbols == "C")
  
  # ケースの確定
  # ダイヤはワイルドカードなので，同じシンボルが3つ揃っているか，
  # 3つともバーになっているかはダイヤ以外で考える
  slots <- symbols[symbols != "DD"]
  same <- length(unique(slots)) == 1
  bars <- slots %in% c("B", "BB", "BBB")
  
  # 賞金の計算
  if(diamonds ==3){
    prize <- 100
  }else if(same){
    payouts <- c("7" = 80, "BBB" = 40, "BB" = 25, 
                 "B" = 10, "C" = 10, "0" = 0)
    prize <- unname(payouts[slots[1]])
  } else if(all(bars)){
    prize <- 5
  } else if(cherries > 0){
    # 本物のチェリーがあるときに限り
    # ダイヤをチェリーとしてカウント
    prize <- c(0, 2, 5)[cherries + diamonds + 1]
  } else {
    prize <- 0
  }
  
  # ダイヤによる賞金の加算
  prize * 2 ^ diamonds # ダイアモンドの数だけ賞金を倍増
}

for (i in 1:nrow(combos)) {
  symbols <- c(combos[i, 1], combos[i, 2], combos[i, 3])
  combos$prize[i] <- score(symbols)
}
sum(combos$prize * combos$prob)

plays_till_broke <- function(start_with) {
  cash <- start_with
  n <- 0
  while (cash > 0) {
    cash <- cash - 1 + play()
    n <- n + 1
  }
  n
}
plays_till_broke(100)

plays_till_broke <- function(start_with) {
  cash <- start_with
  n <- 0
  repeat {
    cash <- cash - 1 + play()
    n <- n + 1
    if (cash <= 0){
      break
    }
  }
  n
}
plays_till_broke(100)


# 10章 スピード ----------------------------------------------------------------

abs_loop <- function(vec) {
  for (i in 1:length(vec)) {
    if (vec[i] < 0) {
      vec[i] <- -vec[i]
    }
  }
  vec
}

abs_set <- function(vec) {
  negs <- vec < 0
  vec[negs] <- vec[negs] * -1
  vec
}

long <- rep(c(-1, 1), 5000000)

system.time(abs_loop(long))
system.time(abs_set(long))

system.time(abs(long))

vec <- c(1, -2, 3, -4, 5, -6, 7, -8, 9, -10)
vec < 0
vec[vec < 0]
vec[vec < 0] * -1


change_symbols <- function(vec) {
  for (i in 1:length(vec)) {
    if (vec[i] == "DD") {
      vec[i] <- "joker"
    } else if (vec[i] == "C") {
      vec[i] <- "ace"
    } else if (vec[i] == "7") {
      vec[i] <- "king"
    } else if (vec[i] == "B") {
      vec[i] <- "queen"
    } else if (vec[i] == "BB") {
      vec[i] <- "jack"
    } else if (vec[i] == "BBB") {
      vec[i] <- "ten"
    } else {
      vec[i] <- "nine"
    }
  }
  vec
}
vec <- c("DD", "C", "7", "B", "BB", "BBB", "0")
change_symbols(vec)
many <- rep(vec, 1000000)
system.time(change_symbols(many))

vec[vec == "DD"]
vec[vec == "C"]
vec[vec == "7"]
vec[vec == "B"]
vec[vec == "BB"]
vec[vec == "BBB"]
vec[vec == "0"]

vec[vec == "DD"] <- "joker"
vec[vec == "C"] <- "ace"
vec[vec == "7"] <- "king"
vec[vec == "B"] <- "queen"
vec[vec == "BB"] <- "jack"
vec[vec == "BBB"] <- "ten"
vec[vec == "0"] <- "nine"

change_vec <- function(vec) {
  vec[vec == "DD"] <- "joker"
  vec[vec == "C"] <- "ace"
  vec[vec == "7"] <- "king"
  vec[vec == "B"] <- "queen"
  vec[vec == "BB"] <- "jack"
  vec[vec == "BBB"] <- "ten"
  vec[vec == "0"] <- "nine"
  vec
}

system.time(change_vec(many))

change_vec2 <- function(vec) {
  tb <- c("DD" = "joker", "C" = "ace", "7" = "king", "B" = "queen", 
          "BB" = "jack", "BBB" = "ten", "0" = "nine")
  unname(tb[vec])
}
system.time(change_vec2(many))

loop <- function(){
  output <- rep(NA, 1000000)
  for (i in 1:1000000) {
    output[i] <- i + 1
  }
}
system.time(loop())

loop <- function(){
  output <- NA
  for (i in 1:1000000) {
    output[i] <- i + 1
  }
}
system.time(loop())

winnings <- vector(length = 10000000)
for (i in 1:10000000) {
  winnings[i] <- play()
}
mean(winnings)

get_many_symbols <- function(n) {
  wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")
  vec <- sample(wheel, size = 3 * n, replace = TRUE,
                prob = c(0.03, 0.03, 0.06, 0.1, 0.25, 0.01, 0.52))
  matrix(vec, ncol = 3)
}
get_many_symbols(5)

play_many <- function(n) {
  symb_mat <- get_many_symbols(n = n)
  data.frame(w1 = symb_mat[, 1], w2 = symb_mat[, 2],
             w3 = symb_mat[, 3], prize = score_many(symb_mat))
}

symbols <- matrix(
  c("DD", "DD", "DD",
    "C", "DD", "0", 
    "B", "B", "B",
    "B", "BB", "BBB", 
    "C", "C", "0",
    "7", "DD", "DD"), 
  nrow = 6, byrow = TRUE
)
symbols

# symbolsはスロットマシンの個々のウィンドウに対応する列を持った行列
# でなければならない
score_many <- function(symbols) {
  
  # ステップ1：ここでチェリーとダイヤに基づき基礎賞金を割り当てる
  ## 3つのシンボルに含まれるチェリーとダイヤの数を数える
  cherries <- rowSums(symbols == "C")
  diamonds <- rowSums(symbols == "DD")
  
  ## ダイヤはチェリーとしてカウントする
  prize <- c(0, 2, 5)[cherries + diamonds + 1]
  
  ## しかし，本物のチェリーがなければチェリーの数は0とする
  ### cherries == 0ならチェリーの賞金は0とする
  prize[!cherries] <- 0
  
  # ステップ2：3つのシンボルが同じ時の賞金を設定する
  same <- symbols[, 1] == symbols[, 2] &
    symbols[, 2] == symbols[, 3]
  payoffs <- c("DD" = 100, "7" = 80, "BBB" = 40, 
               "BB" = 25, "B" = 10, "C" = 10, "0" = 0)
  prize[same] <- payoffs[symbols[same, 1]]
  
  # ステップ3：3つが同じではないが全てバーのときの賞金を設定する
  bars <- symbols == "B" | symbols == "BB" | symbols == "BBB"
  all_bars <- bars[, 1] & bars[, 2] & bars[, 3] & !same
  prize[all_bars] <- 5
  
  # ステップ4：ワイルドカードとしてのダイヤを処理する
  
  ## 2つのダイヤが含まれているcombos
  two_wilds <- diamonds == 2
  
  ### 2つのダイヤがある時のダイヤ以外のシンボル
  one <- two_wilds & symbols[, 1] != symbols[, 2] &
    symbols[, 2] == symbols[, 3]
  two <- two_wilds & symbols[, 1] != symbols[, 2] &
    symbols[, 1] == symbols[, 3]
  three <- two_wilds & symbols[, 1] == symbols[, 2] &
    symbols[, 2] != symbols[, 3]
  
  ### 3つの同じシンボルとして扱う
  prize[one] <- payoffs[symbols[one, 1]]
  prize[two] <- payoffs[symbols[two, 2]]
  prize[three] <- payoffs[symbols[three, 3]]
  
  # 1つのダイヤが含まれているcombos
  one_wild <- diamonds == 1
  
  ### 適切であれば3つのバーとして扱う
  wild_bars <- one_wild & (rowSums(bars) == 2)
  prize[wild_bars] <- 5
  
  ### 適切であれば3つの同じシンボルとして扱う
  one <- one_wild & symbols[, 1] == symbols[, 2]
  two <- one_wild & symbols[, 2] == symbols[, 3]
  three <- one_wild & symbols[, 3] == symbols[, 1]
  prize[one] <- payoffs[symbols[one, 1]]
  prize[two] <- payoffs[symbols[two, 2]]
  prize[three] <- payoffs[symbols[three, 3]]
  
  # ステップ5：combosに含まれるダイヤ1個ごとに賞金を2倍にする
  unname(prize * 2 ^ diamonds)
  
}
system.time(play_many(10000000))
play_many(10000000)

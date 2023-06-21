#' Assignment 3
#' This script allows the user to play Hangman in R
#' Please ensure that words.txt is in your working directory. 

#' Loading words from a predefined list of words into the character vector 
#' wordsList using readLines(). One word is randomly sampled using sample(). 
wordsList <- readLines("words.txt")
secretWord <- sample(wordsList, 1)

#' Introduction to the game given to the player. nchar() is used to provide
#' the player with the number of characters in the secret word. Each text line
#' is separated by a line using /n to improve text readability. 
secretWordLength <- nchar(secretWord)

cat("Welcome to Medical Device Hangman!\n")
cat("Your goal is to guess the secret word letter-by-letter.\n")
cat("If you want, you can also guess the whole word.\n")
cat("Be careful, if you guess wrong six times, you get hanged!\n")
cat("Your secret word has", secretWordLength, "letters.\n")


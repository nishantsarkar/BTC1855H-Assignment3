#' Assignment 3
#' This script allows the user to play Hangman in R

#' Loading words from a predefined list of words into the character vector 
#' wordsList using readLines(). One word is randomly sampled using sample(). 
wordsList <- readLines("words.txt")
secretWord <- sample(wordsList, 1)

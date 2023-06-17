#' Assignment 3
#' This script allows the user to play Hangman in R

#' Loading words from a text file into a vector, then randomly sampling one word
#' for the game. Please ensure that words.txt is in your working directory. 
wordsList <- readLines("words.txt")
secretWord <- sample(wordsList, 1)


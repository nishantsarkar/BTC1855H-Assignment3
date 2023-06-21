#' Assignment 3
#' This script allows the user to play Hangman in R

# This function initializes all the variables in the game.
initialization <- function() {
  #' Loading words from a text file into a vector, then randomly sampling one word
  #' for the game. Please ensure that words.txt is in your working directory. 
  wordsList <- readLines("words.txt")
  secretWord <- sample(wordsList, 1)
  
  #' The following vectors and counter are initialized here with empty vectors 
  #' to eventually hold letters that have been guessed overall, letters which 
  #' match those in secretWord, and the number of incorrect guesses. 
  lettersGuessed <- vector()
  lettersCorrect <- vector()
  incorrectGuesses <- 0
  
  #' The initialization function compiles all the above into a list, which 
  #' contains all information about the state of the game.
  return(list(secretWord = secretWord,
              lettersGuessed = lettersGuessed,
              lettersCorrect = lettersCorrect,
              incorrectGuesses = incorrectGuesses))
} # End of initialization() function block

# This function contains the main hangman gameplay. 
hangman <- function() {
  gameState <- initialization()
}

hangman()


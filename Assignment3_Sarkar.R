#' Assignment 3
#' This script allows the user to play Hangman in R
#' Please ensure that words.txt is in your working directory. 

#' Loading words from a predefined list of words into the character vector 
#' wordsList using readLines(). One word is randomly sampled using sample(). 
wordsList <- readLines("words.txt")
secretWord <- sample(wordsList, 1)

#' Initializing variables for future use.
wrongGuessesMax <- 6
wrongGuessesCurrent <- 0

#' nchar() is used to provide the player with the number of characters in 
#' the secret word.
secretWordLength <- nchar(secretWord)

#' The correctLetters vector is initialized to contain the same number of
#' underscores as the letters in secretWord, indicating that no letters have
#' been successfully guessed yet. This is updated in the main gameplay loop.
correctLetters <- rep("_", secretWordLength)

#' Initializing guessedLetters as an empty character vector for later use.
guessedLetters <- character(0)

#' Introduction to the game given to the player. Each text line is separated 
#' by a line using /n to improve text readability. 
cat("Welcome to Medical Device Hangman!\n")
cat("Your goal is to guess the secret word letter-by-letter.\n")
cat("If you want, you can also guess the whole word.\n")
cat("Be careful, if you guess wrong", wrongGuessesMax, "times, you get hanged!\n")
cat("Your secret word has", secretWordLength, "letters.\n")

#' Main game loop. This is where the core gameplay is controlled.
while (wrongGuessesCurrent < wrongGuessesMax) {
  
  #' This text is displayed each turn so that the player understands the current
  #' state of the game. 
  cat("Progress so far:", paste(correctLetters), "\n")
  cat("Wrong guesses:", paste(guessedLetters), "\n")
  cat("You have", wrongGuessesMax - wrongGuessesCurrent, "wrong guesses left.\n")
  
  #' Asking for user input, which is converted to lowercase. 
  userInput <- tolower(readline("Enter a letter, or guess the full word: "))

  #' The following nested code block first checks if userInput matches secretWord.
  #' If it does, the gameplay loop is immediately broken and the player wins.
  if (userInput == secretWord) {
    cat("Great job! You correctly guessed: ", secretWord, ". You didn't get hanged!\n")
    break
  } 
    else if ((nchar(userInput) == 1) && grepl("[[:alpha:]]", userInput)) {
    #' The above and following code checks if userInput is a single letter by
    #' checking if nchar == 1 and using grepl() to determine if the input is
    #' alphabetical. If so, userInput is compared to secretWord. If userInput is 
    #' present in secretWord, the guess was correct, and the letter is added to 
    #' correctLetters in the same position as it is present in secretWord. Otherwise, 
    #' userInput is added to guessedLetters and the wrongGuessesCurrent counter 
    #' increases by one.
    if (userInput %in% strsplit(secretWord, "")[[1]]) {
      cat("You guessed a letter correctly!\n")
      correctLetters[strsplit(secretWord, "")[[1]] == userInput] <- userInput
    } else {
      cat("Incorrect guess!\n")
      guessedLetters <- c(guessedLetters, userInput)
      wrongGuessesCurrent <- wrongGuessesCurrent + 1
    } # Inner if-else to check if single-alphabet input is correct.
    
  } else if ((nchar(userInput) > 1) && grepl("[[:alpha:]]", userInput)) {
    #' The above and following code checks if userInput is more than a single
    #' letter and is alphabetical. This is for when the user attempts to guess
    #' the whole word but is incorrect, so that it can be added to guessedLetters
    #' and lower the user's remaining wrong guesses. If this was not included,
    #' multi-letter inputs that are incorrect are recognized as invalid.
      cat("Incorrect guess!\n")
      guessedLetters <- c(guessedLetters, userInput)
      wrongGuessesCurrent <- wrongGuessesCurrent + 1
  } else {
    cat("Invalid input. Please enter a letter, or guess the full word.\n")
  } # Outer if-else that compares userInput to secretWord. 
  
} # End of main gameplay loop

# If statement that checks if the user has met their number of wrong guesses.
if (wrongGuessesCurrent == wrongGuessesMax) {
  cat("You're out of guesses and have been hanged!\n")
  cat(paste0("The secret word was ", secretWord, "."))
} 

#' TO DO: Add Hangman visual, perhaps using a function.
#'        Add additional comments to clarify nested if-else. 
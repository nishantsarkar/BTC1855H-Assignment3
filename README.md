# BTC1855H-Assignment3
Assignment 3 for BTC1855H (Coding in R) - Hangman in R

This code runs a simulation of the game Hangman in R, fulfilling the following requirements: 
- Reads a list of words (words.txt) and randomly samples one word from the list
- Informs the user on the length of the secret word
- Informs the user on the number of wrong guesses or tries allowed
- Asks for a single-character user input and checks if the input is a letter.
- Checks to see if the letter is in the secret word.
- If the letter is in the word, the user is notified and is asked for the next letter.
- If not, the user is notified and the game continues until all tries are exhausted.
- At each guess, the player is informed about letters they have already tried, and the number of attempts remaining.
- A graphical display of the player's progress accompanies each attempt. 

Furthermore:
- A hangman is displayed corresponding to the number of incorrect guesses.
- The user is able to guess the whole word if they want.
- If the user attempts to guess the whole word but the input contains punctuation, numbers, or spaces, the input is invalid.

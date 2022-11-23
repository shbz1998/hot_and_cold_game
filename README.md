# NUMBER GUESSING GAME ON FPGA
## SHAHBAZ MALIK

VIDEO DEMO: https://www.youtube.com/watch?v=PtXUlY8Xdfo

Two modes: Single digit mode and double digit mode.
User can choose each mode by just toggling the on-board switch.

A counter counts from 0 to 99. When the user presses push button 1, the counter stops and the user has to guess the number it stopped at. The user can his guess using the PMOD KEYPD. 

RED RGB LED informs the user that they are getting closer to the target number
BLUE RGB LED informs the user that they are getting farther from the target number
GREEN RGB LED informs the user that the guess is correct

Note: In the actual game the counter should be fast. For testing purposes, the counter frequency was set low. It can be changed in the code.


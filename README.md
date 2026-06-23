# Project: Tic-Tac-Toe  
It is a basic Ruby project implementing the game on command line.  

Componenets of Game:  
- Class: tic-tac-toe
- Instance Variables:  
  - Player0, Player1: Array of 9 elements, initailly containing all zeros 0's
- Class Methods:
  - get_move: to get the move from player and moving it in respective player variable
  - check_winner: after the move check if there is a winner.
  - game: to repeat this cycle 9 times and announce the result

# Main Files

root/  
├── main.rb               # Entry point; instantiates and runs the game  
└── lib/  
    └── tic_tac_toe.rb    # Contains the core TicTacToe game class  

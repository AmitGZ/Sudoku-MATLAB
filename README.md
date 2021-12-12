# Sudoku-MATLAB

![Alt Text](/ScreenCaps/sudoku animator.gif?raw=true "Optional Title")

This Script is a Sudoku Solver that solves almost any Sudoku Puzzle by using the Recursive Backtracking Algorithm . Ever tried but stucked on Sudoku Puzzles given in newspapers, magazines and online. You can use this script to get its solution instantly and move further.

* Every time "New Game" is executed, a Random Solvable board is created.
* Now, the user can first try to attempt solving it by clicking on the cells and entering values manually. and check if valid at any point by pressing the "Check" button
* Likewise, values can be removed by pressing on the backspace or delete keys.
* by clicking the "Solve" button the user can call the recursive backtracking solving algorithm which will solve the current board given it's possible.

# Main Algorithm

the solving algorithm works by trying every possible value at a given cell in the board and checking if it is within the rules of sudoku, then continuing on to the next cell, if it reaches a dead end it backtracks to the last possible state by its recursive nature and keeps trying until getting the first possible solution

# frozen_string_literal: true

# Class for the game tic tac toe
class TicTacToe
  attr_accessor :turn, :players

  def initialize
    @players = []
    2.times do |num|
      players.append([])
      9.times do
        players[num].push(0)
      end
    end
    @turn = rand.round(0)
  end

  def game
    loop do
      puts nil, "Turn is for Player#{turn}"
      play_move
      break if winner?

      change_turn
    end
  end

  protected

  def play_move
    av_move = avaiable_moves
    print_arr(av_move, 'Select from these: ')
    move = gets.chomp.to_i
    until av_move.include? move
      puts 'Wrong Choice, Choose again !'
      move = gets.chomp.to_i
    end
    set_move(move)
  end

  def winner?
    win_combinations = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
    ]
    win_combinations.each do |i, j, k|
      if players[turn][i] == 1 && players[turn][j] == 1 && players[turn][k] == 1
        announce
        return true
      end
    end
    false
  end

  def announce
    puts nil, nil
    print "Player#{turn} wins"
    puts nil
  end

  def change_turn
    return self.turn = 0 if turn == 1

    self.turn = 1
  end

  def set_move(move)
    players[turn][move] = 1
  end

  def avaiable_moves
    moved = get_index(players[0]).union get_index(players[1])
    total = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    total.difference moved
  end

  def get_index(array)
    result = []
    array.each_with_index do |num, index|
      result.push index if num == 1
    end
    result
  end

  def print_arr(array, message = '')
    print message, array
    puts nil
  end
end




# puts "You are flipping a coin"
# if rand.round == 0
#   coin = "heads"
# else
#   coin = "tails"
# end
# puts "It is " + coin

require 'pry'

class Coin_toss
  attr_accessor :user
  def initialize(user)

    @user = user
    @coin_flip = [1, 2]
    @bets = 0
    @wallet = user.funds
    heads_tails
  end 

  def heads_tails

    puts "Welcome to Heads or Tails!"
    puts "How much would you like to bet?"
    @bets = gets.to_i 
    @wallet = @wallet - @bets
    puts "You are betting #{@bets}"
    # gets pull from wallet script that gets a value from the user subtracts that value from the wallet
    # then runs the rest of the script if lose nothing happens if win they get bet *2 another vaiable caclled bet and add to wallet
    puts "Would you like heads or tails? Type 1 for heads 2 for tails."
      choice = gets.to_i
    # @coin_flip.sample
    if choice == @coin_flip.sample
      puts "You have won!!" 
      @wallet = (@bets * 2) + @wallet 
      puts @wallet
      new_game
    else
      puts "You lost"

      new_game
    end

  end


  def new_game
   puts "Would you like to play again?"
   puts "1) Yes"
   puts "2) No"
   choice = gets.to_i
   if 1
    heads_tails
   elsif 2
    # mainmenu
   end
  end
end




class Coin_toss

  def initialize
    @coin_flip = [1, 2]
    @bets = 0
<<<<<<< HEAD
    heads_tails
  end 

  def heads_tails

    puts "Welcome to Heads or Tails!"
    puts "How much would you like to bet?"
    @bets = gets.to_i 
    user.funds = user.funds - @bets
    puts "You are betting #{@bets}"
    # gets pull fromuser.funds script that gets a value from the user subtracts that value from theuser.funds
    # then runs the rest of the script if lose nothing happens if win they get bet *2 another vaiable caclled bet and add touser.funds
    puts "Would you like heads or tails? Type 1 for heads 2 for tails."
      choice = gets.to_i
    # @coin_flip.sample
    if choice == @coin_flip.sample
      puts "You have won!!" 
      user.funds = (@bets * 2) + user.funds 
      puts user.funds
      new_game
    else
      puts "You lost"
      puts user.funds

      new_game
    end

=======
    @wallet = 300
    heads_tails
  end 

def heads_tails

  puts "Welcome to Heads or Tails!"
  puts "\n"
  puts "How much would you like to bet?"
  @bets = gets.to_i 
  @wallet = @wallet - @bets
  puts "You are betting #{@bets}"
  puts "\n"
  puts "Would you like heads or tails? Type 1 for Heads 2 for Tails."
    choice = gets.to_i
  if choice == @coin_flip.sample
    puts "You have won!!" 
    @wallet = (@bets * 2) + @wallet 
    puts @wallet
    new_game
  else
    puts "You lost"

    new_game
>>>>>>> add to headstails and create slot game
  end

end

def new_game
   puts "Would you like to play again?"
   puts "1) Yes"
   puts "2) No"
   choice = gets.to_i
   if 1
    heads_tails
   elsif  2
    puts "You have ended with #{@wallet}"
    casinouser.mainmenu(user)
   end
  end
end

Coin_toss.new
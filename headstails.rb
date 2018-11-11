class Coin_toss
  attr_accessor :user
  def initialize(user)
    @coin_flip = [1, 2]
    @bets = 0
    user = user
    heads_tails(user)
    
  end 

  def heads_tails(user)

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
      new_game(user)
    else
      puts "You lost"
      puts user.funds

      new_game(user)
    end

  end

def new_game(user)
   puts "Would you like to play again?"
   puts "1) Yes"
   puts "2) No"
   choice = gets.chomp.to_i
   case choice
   when 1
    heads_tails(user)
   when 2
    puts "You have ended with #{user.funds}"
    user
   end
  end
end

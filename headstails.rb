


# puts "You are flipping a coin"
# if rand.round == 0
#   coin = "heads"
# else
#   coin = "tails"
# end
# puts "It is " + coin
class Coin_toss

  def initialize
    coin_flip = ["heads", "tails"]
    heads_tails(coin_flip)
  end 

def heads_tails(coin_flip)
  
  puts "Welcome to Heads or Tails!"
  puts "How much would you like to bet?"
  # gets pull from wallet
  puts "Would you like heads or tails?"
    choice = gets.chomp.strip
  coin_flip.sample
  if coin_flip == choice
    puts "You have won!!"
    new_game
  else
    puts "You lost"
  end

end

def new_game
  
end

Coin_toss.new
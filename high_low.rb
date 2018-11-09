
class HighLow

  def initialize

  end

  def ()

    puts "Welcome to High/Low!"
    puts "How much would you like to bet?"
    @bets = gets.to_i
    @wallet - @bets
    puts "Would you like heads or tails?"
      choice = gets.chomp.strip
    coin_flip.sample
    if coin_flip == choice
      puts "You have won!!"
      new_game
      @bets * 2
      @bets + @wallet
    else
      puts "You lost"
    end

  end
end

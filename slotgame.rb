
class Slot_game
  attr_accessor :user
  

def initialize(user)
  @slot_images = ["Cherry","Orange", "Melon"]
  @bets = 0
  @wallet = 300
  make_bet
end

def compute(s1, s2, s3)
  if s1==s2 && s2==s3 
    3
  elsif s1==s2 || s2==s3 || s1==s3
    2
  else
    0
  end
end

  def make_bet
    puts "Welcome to slots!"
    puts "\n"
    puts "How much would you like to bet?"
    @bets = gets.to_i 
    user.funds = user.funds - @bets
    #@wallet = @wallet - @bets
    puts "You are betting $#{@bets}"
    puts "\n"
    puts "Press 1 to pull the handle!"
    choice = gets.to_i
    if choice == 1
      run_slots
    elsif
      puts "Invalid Input Try Again"
      make_bet
    end
  end

  def run_slots
    slot_image_1 = @slot_images.shuffle.first
    slot_image_2 = @slot_images.shuffle.first
    slot_image_3 = @slot_images.shuffle.first

    puts "#{slot_image_1} - #{slot_image_2} - #{slot_image_3}"

    winnings = @bets * compute(slot_image_1, slot_image_2, slot_image_3)
        puts "\n"
        puts "You have won $#{winnings}"
        puts "\n"
        game_end
  end

  def game_end
    puts "Would you like to play again?"
    puts "1) Yes"
    puts "2) Exit"
    choice = gets.to_i
    if choice == 1
      make_bet
    if choice == 2
      puts "You have ended with $#{@wallet}!"
      user
    elsif 
      puts "Invalid entry. Please try again."
      game_end
    end
  end
end

end

<<<<<<< HEAD

Slot_game.new
=======
>>>>>>> 4e96e1f863f8fb557900df3417c431bb1138bd29

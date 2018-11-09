def startup
  puts "Please Enter Your Name:"
  name = gets.chomp
  puts "Please Enter Your Age:"
  age = gets.chomp.to_i
  if age < 21 
    puts("You ain't 21! Get out of here!")
  else
    puts "Please Enter Your Cash Total:"
    funds = gets.chomp.to_i
    user = Createuser.new(name, age, funds)
    Casino.new(user)
  end

end


class Createuser
  attr_accessor :name, :age, :funds
  def initialize(name, age, funds)
    @name = name
    @age = age
    @funds = funds
  end
end

class Casino

  attr_accessor :user
  def initialize(user)
    mainmenu(user)
  end

  def mainmenu(user)
    puts "---Main Menu---"
    puts "~~~~~~~~~~~~~~~"
    puts "1) Gameone"
    puts "2) Gametwo"
    puts "3) Gamethree"
    puts "4) Gamefour"
    puts "~~~~~~~~~~~~~~~"
    choice = gets.chomp
    submanage(choice)
  end

  def submanage(choice)
    case choice
    when "main"
      mainmenu
    when "quit"
      quit
    else
      case choice.to_i
      when 1
        gameone
      when 2
        gametwo
      when 3
        gamethree
      when 4
        gamefour
      else
        puts ""
        puts "Please enter a valid option"
        puts ""
        mainmenu
      end
    end
  end
end

startup
class Roulette

  attr_accessor :user
  def initialize(user)
    @bets = 0
    user = user
    makeoptions
    tableimage
    roulettestart(user)
  end

  class Tableitem
    attr_accessor :name, :color, :multiplyer
    def initialize(name, color, multiplyer)
      @value = name
      @color = color
      @multiplyer = multiplyer
    end
  end

  def makeoptions()
    @zero = Tableitem.new("0","green", 36)
    @doublezero = Tableitem.new("00","green", 36)
    @one = Tableitem.new("1","red", 36)
    @two = Tableitem.new("2","black", 36)
    @three = Tableitem.new("3","red", 36)
    @four = Tableitem.new("4","black", 36)
    @five = Tableitem.new("5","red", 36)
    @six = Tableitem.new("6","black", 36)
    @seven = Tableitem.new("7","red", 36)
    @eight = Tableitem.new("8","black", 36)
    @nine = Tableitem.new("9","red", 36)
    @ten = Tableitem.new("10","black", 36)
    @eleven = Tableitem.new("11","black", 36)
    @twelve = Tableitem.new("12","red", 36)
    @thirteen = Tableitem.new("13","black", 36)
    @fourteen = Tableitem.new("14","red", 36)
    @fifteen = Tableitem.new("15","black", 36)
    @sixteen = Tableitem.new("16","red", 36)
    @seventeen = Tableitem.new("17","black", 36)
    @eighteen = Tableitem.new("18","red", 36)
    @nineteen = Tableitem.new("19","red", 36)
    @twenty = Tableitem.new("20","black", 36)
    @twentyone = Tableitem.new("21","red", 36)
    @twentytwo = Tableitem.new("22","black", 36)
    @twentythree = Tableitem.new("23","red", 36)
    @twentyfour = Tableitem.new("24","black", 36)
    @twentyfive = Tableitem.new("25","red", 36)
    @twentysix = Tableitem.new("26","black", 36)
    @twentyseven = Tableitem.new("27","red", 36)
    @twentyeight = Tableitem.new("28","black", 36)
    @twentynine = Tableitem.new("29","black", 36)
    @thirty = Tableitem.new("30","red", 36)
    @thirtyone = Tableitem.new("31","black", 36)
    @thirtytwo = Tableitem.new("32","red", 36)
    @thirtythree = Tableitem.new("33","black", 36)
    @thirtyfour = Tableitem.new("34","red", 36)
    @thirtyfive = Tableitem.new("35","black", 36)
    @thirtysix = Tableitem.new("36","red", 36)
    @firstdozen = Tableitem.new("1-12","group", 3)
    @seconddozen = Tableitem.new("13-24","group", 3)
    @thirddozen = Tableitem.new("25-36","group", 3)
    @firstrow = Tableitem.new("1st Row","group", 3)
    @secondrow = Tableitem.new("2nd Row","group", 3)
    @thirdrow = Tableitem.new("3rd Row","group", 3)
    @odd = Tableitem.new("Odd","group", 2)
    @even = Tableitem.new("Even","group", 2)
    @red = Tableitem.new("Red","group", 2)
    @black = Tableitem.new("Black","group", 2)
    @firsthalf = Tableitem.new("1-18","group", 2)
    @secondhalf = Tableitem.new("19-36","group", 2)

  end
  
  def tableimage
    puts "     ________________________________________________________"
    puts "    |         1st Half         |           2nd Half          |"
    puts "    |--------------------------------------------------------|---------."
    puts " .--| 3 | 6 | 9 | 12 | 15 | 18 | 21 | 24 | 27 | 30 | 33 | 36 | 3rd Row |"
    puts "| 0 |--------------------------------------------------------|---------|"
    puts " >--| 2 | 5 | 8 | 11 | 14 | 17 | 20 | 23 | 26 | 29 | 32 | 35 | 2nd Row |"
    puts "| 00|--------------------------------------------------------|---------|"
    puts " '--| 1 | 4 | 7 | 10 | 13 | 16 | 19 | 22 | 25 | 28 | 31 | 34 | 1st Row |"
    puts "    |--------------------------------------------------------|---------'"
    puts "    |    1st Dozen   |     2nd Dozen     |     3rd Dozen     |"
    puts "    '------------.---'-------------------:-------.-----------'"
    puts "                 |  Even |  Odd  |  Red  | Black |"
    puts "                 '-------------------------------'"
  end

end

Roulette.new("frank")
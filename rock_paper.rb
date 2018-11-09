$player_count = 0
$dealer_count = 0

what_to_include = %w{r p s}

paper = "p"
rock = "r"
scissors = "s"

def dealer_input
  dealer = rand(3)
  if dealer == 0
    dealer = "p"
  elsif dealer == 1
    dealer = "r"
  else
    dealer = "s"
  end
end


while true

puts "Player Score: #{$player_count}, \tDealer Score: #{$dealer_count}"

print "Choose rock (r), paper (p), or scissors (s): "
player_input = gets.chomp.downcase

  if player_input == rock && dealer_input == scissors
    puts "Player chose rock. \nDealer chose scissors."
    puts "Rock beats scissors, player wins the round."
    $player_count += 1

  elsif player_input == scissors && dealer_input == paper
    puts "Player chose scissors. \nDealer chose paper."
    puts "Scissors beat paper, player wins the round."
    $player_count += 1

  elsif player_input == paper && dealer_input == rock
    puts "Player chose paper. \nDealer chose rock."
    puts "Paper beats rock, player wins the round."
    $player_count += 1

  elsif dealer_input == rock && player_input == scissors
    puts "Player chose scissors. \nDealer chose rock."
    puts "Rock beats scissos, dealer wins the round."
    $dealer_count += 1

  elsif dealer_input == scissors && player_input == paper
    puts "Player chose paper. \nDealer chose scissors."
    puts "Scissors beats paper, dealer wins the round."
    $dealer_count += 1

  elsif dealer_input == paper && player_input == rock
    puts "Player chose rock. \nDealer chose paper."
    puts "Paper beats rock, dealer wins the round."
    $dealer_count += 1

  # elsif player_input == dealer_input
  #   puts "Player chose #{player_input},\n dealer chose #{dealer_input}."
  #   puts "Tie, choose again."  #tried with this but returns r, s, p instead of word

  elsif player_input == rock && dealer_input == rock ||
        player_input == paper && dealer_input == paper ||
        player_input == scissors && dealer_input == scissors
    puts "Player chose rock. \nDealer chose rock."
    puts "Tie, choose again."
  end

  if player_input.include?("abcdefghijklmnoqtuvxzy")
    puts "Invalid entry, try again."
  end

  if $player_count == 2
    puts "Player wins!"
    break
  elsif $dealer_count == 2
    puts "Dealer wins!"
    break
  end
end
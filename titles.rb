
# (in the terminal) get install colorize
# (in the terminal) get install artii
# (in the script) use .red .blue .green .yellow to change colors
# (in the script) use:
# variable_name = Artii::Base.new :font => none
# variable_name.asciify("What ever you want")

require 'colorize'
require 'artii'
puts
banner = Artii::Base.new
puts banner.asciify('Rock - Paper - Scissors').green
puts
puts
banner = Artii::Base.new :font => 'slant'
puts banner.asciify('* slots *').red
puts
puts
banner = Artii::Base.new :font => 'slant'
puts banner.asciify('Heads < >  Tails').yellow
puts
puts
banner = Artii::Base.new
puts banner.asciify('R O U L E T T E').blue

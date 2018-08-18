#require_relative 'casino_manager.rb'
require_relative 'deck.rb'
#require_relative 'rick-roll.mp3'

#require gemfile
##what gems may be useful?


class GoFish

  def initialize#(manager)
    #@manager = manager
    d = Deck.new
    #d.list
  end

  def deal
    puts 'this is deal'
    pid = fork{ exec 'afplay', "song.mp3" }
  end
    #7 random cards to each player
    #dealt cards cannot be used again
    #create array for each player to hold dealt cards
    # .sample copies, doesn't delete
  #   loop over deck.arr using .pop or .slice to remove values in .sample (player hands)
  # .clone #to save the original array 
  # .rand


  def hand
    puts 'this is hand'
    #this will track each players hands dynamically
    #string for each??
  end

  def rules
    puts 'Paste this Into Your browser'
    puts 'https://www.bicyclecards.com/how-to-play/go-fish/'
    puts
    puts 'Press Enter to Return to Main Menu'
    puts
    gets
    gf_menu
  end

  def gf_menu
    puts '------------------------'
    puts 'Welcome to Go Fish!'
    puts '1) Review the Rules'
    puts '2) Deal Cards'
    puts '3) Exit'
    puts '------------------------'
    menu_choice
    #gets
    #take user input to initialize deal
    #deal
    #gf_menu
  end

  def menu_choice
    choice = gets.strip.to_i
    case choice
      when 1 
        rules
        menu_choice
      when 2
        deal
        menu_choice
      when 3
        %x( say 'Never gonna give you up 
        Never gonna let you down 
        Never gonna run around and dessert you 
        Never gonna make you cry 
        Never gonna say good bye 
        Never gonna tell a lie and hurt you' ) 
        #8 bit or midi file
        exit 
      else
        puts 'whats your problem man'
      end
  end
end

while true 
gf = GoFish.new
gf.gf_menu
end


#call methods and classes here
#gf_menu

#require_relative 'go_fish.rb'
require_relative 'strip_club.rb'
require_relative 'slots.rb'

class Manager

  attr_accessor :money

  def initialize
    @money = 1000
    @games = [ 'Slots', 'Go Fish']
    #@go_fish = GoFish.new
    @strip_club = StripClub.new
    @slots = Slots.new(self)
    print_main_menu
  end

  def create_games
    @slots = Slots.new('test')
  end

  def prints_art
      cards ="           
                      _
  _______    ___    _|_|_   ____  _    _   ______
  | _____|  |   |  |  ___|  |  | | )  | | |  __  |
  | |      |  _  | | |___   |  | |  ) | | | |  | |
  | |____  | |_| | |____ |  |  | | | )  | | |__| |
  |______| |_| |_|  ___| |  |__| |_|  |_| |______|
                   |_____|
                     |_|

    ___   ___   ___   ___   ___   ___   ___                             
  |A  | |2  | |3  | |4  | |5  | |6  | |7  |                            
  | ^ | | ^ | | ^ | | ^ | | ^ | | ^ | | ^ |                            
  |(,)| |(,)| |(,)| |(,)| |(,)| |(,)| |(,)|"
    puts cards
  end

  def print_main_menu
    prints_art
    puts "
+-+-+-+-+ Welcome to the Casino +-+-+-+-+ \n
  1) Check balance \n
  2) List games \n 
  3) Exit \n
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
    choose_menu_option(gets.strip.to_i)
  end

  def choose_menu_option(choice)
    case choice
      when 1
        puts "
    ------------------------------------
      Your current balance is: $#{@money}
    ------------------------------------"
        print_main_menu
      when 2
        display_games
      when 3
        "Thanks for playing!"
        exit
      when 69
        @strip_club.animation
      else
        "Invalid input. Try again!"
        print_main_menu
    end
  end

  def display_games
    puts "
    \t-----------------------------
    \t    Please Select a Game
    \t-----------------------------
    "
    @games.each_with_index {|game, index| puts "#{index + 1}) #{game}"}
    puts "3) Go Back to Main Menu"
    choose_game(gets.strip.to_i)
  end

  def choose_game(choice)
    case choice
      when 1
        #@blackjack.menu
        @slots.print_art
      when 2
        @go_fish.menu
      when 3
        print_main_menu
      else
        puts "Invalid Input. Try Again."
        display_games
    end
  end
end

Manager.new
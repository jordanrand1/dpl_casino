#require_relative 'go_fish.rb'
#requite_relative 'strip_club.rb'

class Manager

  attr_accessor :money

  def initialize
    @money = 1000
    @games = ['Blackjack', 'Slots', 'Go Fish']
    #@go_fish = GoFish.new
    #@strip_club = StripClub.new
    print_main_menu
  end

  def prints_art
        cards =
                      "__                                               
              _..-''--'----_.                                        
            ,''.-''| .---/ _`-._                                     
          ,' \ \  ;| | ,/ / `-._`-.                                  
        ,' ,',\ \( | |// /,-._  / /                                  
        ;.`. `,\ \`| |/ / |   )/ /                                   
      / /`_`.\_\ \| /_.-.'-''/ /                                    
      / /_|_:.`. \ |;'`..')  / /                                     
      `-._`-._`.`.;`.\  ,'  / /                                      
          `-._`.`/    ,'-._/ /                                       
            : `-/     \`-.._/                                        
            |  :      ;._ (                                          
            :  |      \  ` \                                         
            \         \   |                                         
              :        :   ;                                         
              |           /                                          
              ;         ,'                                           
            /         /                                             
            /         /                                              
                    /"
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
    choose_game(get.strip.to_i)
  end

  def choose_game(choice)
    case choice
      when 1
        #@blackjack.menu
      when 2
        #@go_fish.menu
      when 3
        print_main_menu
      else
        puts "Invalid Input. Try Again."
        display_games
    end
  end
end

Manager.new
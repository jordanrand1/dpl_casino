#require_relative 'casino_manager.rb'

class Slots

  def initialize(manager)
    @manager = manager
    @icons = %w[🍒 💸 💰 👛 💲]
    @bet = 100
  end

  def print_art
    puts '
                  .-------.
                  |Jackpot|
      ____________|_______|____________
      |  __    __    ___  _____   __    |  
      | / _\  / /   /___\/__   \ / _\   | 
      | \ \  / /   //  //  / /\ \\ \  25|  
      | _\ \/ /___/ \_//  / /  \/_\ \ []| 
      | \__/\____/\___/   \/     \__/ []|
      |===_______===_______===_______===|
      ||*|\_     |*| _____ |*|\_     |*||
      ||*|| \ _  |*||     ||*|| \ _  |*||
      ||*| \_(_) |*||*BAR*||*| \_(_) |*||
      ||*| (_)   |*||_____||*| (_)   |*|| __
      ||*|_______|*|_______|*|_______|*||(__)
      |===_______===_______===_______===| ||
      ||*| _____ |*|\_     |*|  ___  |*|| ||
      ||*||     ||*|| \ _  |*| |_  | |*|| ||
      ||*||*BAR*||*| \_(_) |*|  / /  |*|| ||
      ||*||_____||*| (_)   |*| /_/   |*|| ||
      ||*|_______|*|_______|*|_______|*||_//
      |===_______===_______===_______===|_/
      ||*|  ___  |*|   |   |*| _____ |*||
      ||*| |_  | |*|  / \  |*||     ||*||
      ||*|  / /  |*| /_ _\ |*||*BAR*||*||              
      ||*| /_/   |*|   O   |*||_____||*||        
      ||*|_______|*|_______|*|_______|*||
      |lc=___________________________===|
      |  /___________________________\  |
      |   |                         |   |
    _|    \_______________________/    |_
    (_____________________________________)
    '
    print_menu
  end


  def print_menu
    puts "
    =============================
                SLOTS
    =============================
    "
    puts "
    Your cash: $#{@manager.money}
    Current Bet: $#{@bet}
    1) Play!
    2) Change Bet
    3) Main Menu
    "
    slots_choice(gets.to_i)
  end

  def slots_choice(choice)
    case choice
      when 1
        spin
      when 2
        change_bet
      when 3
        @manager.print_main_menu
      else
        puts "Invalid Input. Try Again"
        print_menu
    end
  end

  def spin
    results = []
    if @manager.money >= @bet
      @manager.money -= @bet
      3.times do
        results << @icons.sample
      end
      puts results
      winnings = @bet * check_matches(results)
      if winnings == 0
        puts "Better luck next time!"
        print_menu
      else
        @manager.money += winnings
        puts "You won: $#{winnings}"
        print_menu
      end
    end
  end

  def check_matches(symbols)
    symbols_clone = symbols.clone
    num_of_matches = -3
    symbols.each_with_index do |emoji, index|
      #binding.pry
      symbols_clone.each_with_index do |emoji_clone, index_clone|
        if symbols[index] == symbols_clone[index_clone]
          #binding.pry
          num_of_matches +=1
        else
          next
        end
      end
    end
    return num_of_matches
  end

  def change_bet
    puts "Change your bet: "
    new_bet = gets.strip.to_i
    if new_bet > @manager.money
      puts "You don't have that kind of money!"
      print_menu
    else
      @bet = new_bet
      print_menu
    end
  end

end

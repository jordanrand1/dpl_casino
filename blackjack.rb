require_relative 'deck.rb'
require 'pry'

class BlackJack

  def initialize(manager)
    @manager = manager
    @bet = 100
  end

  def print_bj_main_menu
    puts "
    =====================
    Welcome to Blackjack!
    =====================

    ++++++++++++++++++++++++++++
    Your current money: #{@manager.money}
    Your current bet: #{@bet}
    ++++++++++++++++++++++++++++

    1) Play
    2) Change bet
    3) Main menu
    "
    make_selection(gets.to_i)
  end

  def make_selection(choice)
    case choice 
      when 1
        if @manager.money < @bet
          puts "Please change your bet."
          print_bj_main_menu
        else
          play_game
        end
      when 2
        change_bet
      when 3
        @manager.print_main_menu
      else
        puts "Invalid input! Try Again!"
        print_bj_main_menu
      end
  end

  def change_bet
    puts "Change your bet: "
    new_bet = gets.strip.to_i
    if new_bet > @manager.money
      puts "You don't have that kind of money!"
      print_bj_main_menu
    else
      @bet = new_bet
      print_bj_main_menu
    end
  end

  def dealer(card)
    @dealer_hand << card
  end

  def player(card)
    @player_hand << card
  end

  def play_game
    @manager.money -= @bet
    @dealer_hand = []
    @player_hand = []
    deck = Deck.new
    @cards = deck.cards
    2.times do dealer(draw_card) end
    2.times do player(draw_card) end
    playing_menu
  end

  def playing_menu
    @dealer_value = value(@dealer_hand)
    @player_value = value(@player_hand)
    if @player_value > 21
      @player_hand.each {|card_object| puts card_object.card}
      choose_winner
    end
    puts "Dealer's value: #{@dealer_value}"
    @dealer_hand.each {|card_object| puts card_object.card}
    puts "================="
    puts "Your value: #{@player_value}"
    @player_hand.each {|card_object| puts card_object.card}
    puts "================="
    if @dealer_value > 21
      puts "You win!!"
      @manager.money += @bet * 2
      print_bj_main_menu
    else
      puts "Hit or Stay?" 
      hit_or_stay(gets.strip.downcase)
    end
  end

  def hit_or_stay(choice)
    case choice
      when 'hit'
        player(draw_card)
        playing_menu
      when 'stay'
        dealer_hit
        choose_winner
      else
        puts "Invalid input! Try again!"
        playing_menu
    end
  end

  def dealer_hit
    until @dealer_value > @player_value
      if @dealer_value < 21
        dealer(draw_card)
        playing_menu
      end
    end 
  end

  def draw_card
    drawn_card = @cards.sample
    return drawn_card
  end

  def value(hand)
    total_value = 0
    hand.each do |card|
      case card.rank
        when 'J', 'Q', 'K'
          total_value += 10
        when 'A'
          if (total_value + 11) > 21
            total_value += 1
          else
            total_value += 11
          end
        else
          total_value += card.rank.to_i
      end
    end
    return total_value
  end

  def choose_winner
    if @player_value <= 21
      if @player_value >= @dealer_value
        puts "You win!"
        @manager.money += @bet * 2
        print_bj_main_menu
      elsif @player_value == @dealer_value
        puts "Tie"
        print_bj_main_menu
      else
        puts "You lose!"
        print_bj_main_menu
      end
    else
      puts "\n#{@player_value}!! You lose!"
      print_bj_main_menu
    end
  end

end


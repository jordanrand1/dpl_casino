# require_relative 'cards'
# require 'pry'
require 'colorize'

class Card
  attr_accessor :rank, :suit, :color, :card

  def initialize(rank, suit, card)
    @rank = rank
    @suit = suit
    @card = card
  end
end

class Deck
  attr_accessor :cards, :shuffle

  def initialize
    @ranks = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
    @suits = %w(♤ ♧ ♢ ♡)
    @cards = []
    generate_deck
  end

  def generate_deck
    @suits.each do |suit|
      @ranks.size.times do |i|
        if suit == '♤' || suit == '♧'
          card = "
        _____
       |#{@ranks[i]}    |
       |     |
       |  #{suit}  |
       |     |
       |____#{@ranks[i]}|".colorize(:white) 
          if @ranks[i].to_i == 10
            card = "
        _____
       |#{@ranks[i]}   |
       |     |
       |  #{suit}  |
       |     |
       |___#{@ranks[i]}|".colorize(:white) 
          end

        else
          if @ranks[i].to_i == 10
            card = "
        _____
       |#{@ranks[i]}   |
       |     |
       |  #{suit}  |
       |     |
       |___#{@ranks[i]}|".colorize(:red)
          end
          card = "
        _____
       |#{@ranks[i]}    |
       |     |
       |  #{suit}  |
       |     |
       |____#{@ranks[i]}|".colorize(:red)
        end
        @cards << Card.new(@ranks[i], suit, card)
        #@card.colorize(:'red')
      end
    end
    shuffle_cards
  end

  def shuffle_cards
    @shuffle = @cards.shuffle
  end

  def list
    @shuffle.each do |card|
      puts card.card
      puts "#{card.rank} of #{card.suit} (#{card.color})"
    end
    # random_card = @shuffle.sample
    # puts
    # puts "Your random card is: #{random_card.rank} of #{random_card.suit} (#{random_card.color})"
    # puts
  end

end

d = Deck.new
#d.list
# puts d.cards.card
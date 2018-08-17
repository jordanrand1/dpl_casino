# Basic Objectives:
# Start game player has a name and an initial bankroll
# Player can go to different games via menu
# Slots
# High / Low
# Player places bet and wins / loses (hint: rand)
# Player's bankroll goes up and down with wins and losses

# Bonus Objectives:
# Ability to move to and from games
# Find a gem that allows you to play sound and find casino sounds that will play on each game change/events
# Gem discovery: go to rubygems.org and find more gems that you want to implement in your project and use
# The player should have a Wallet and the Wallet should be its own class with remove and add methods (OOP)
# Find ASCII Art and put it into your games/menus to make it more fun for the end user
# Ability to switch players (player menu, bankroll information)
# Player's bankroll persists while moving from game to game
# Player's bankroll persists if you switch to different players
# Random events occur when changing games that can increase or decrease player's bankroll
# Roulette
# Craps
# Build a card deck (hint: this is in today's lesson content)
# Card games (Blackjack, Poker, Casino War, etc...)
# Any other Casino game you can think of
# Create your own game

call class Deck
deal method

deck - deal cards, 7 to each player
  pile = deck - cards dealt out (what the players have in hand)

player1 hand - cards dealt
player2 hand - cards dealt

player1 winnings - books won
player2 winnings - books won

winning = most books won, award some money


The goal is to win the most "books" of cards. 
A book is any four of a kind, such as four kings, 
four aces, and so on.

standard deck of 52 cards
cards are ranked per the class Deck ranking
2 players - 2 real people 

flow of game:

seven cards are dealt to each player
  remainder of cards is the deck
player 1 starts by asking player 2 for a specific card -(rank and suit
  -i dont think color is needed - just rank and suit

  player 2 answers yes or no
    yes - card requested goes to player 1 hand
    no - player 2 says 'go fish' and player one draws random card 
      from deck

player 2 repeats steps above

when one player gets 4 of a kind (book) they keep it in their winnnings
  pile
  -4 kings, 4 aces 4 twos etc








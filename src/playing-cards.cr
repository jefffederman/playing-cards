require "./playing-cards/*"

# TODO: Write documentation for `PlayingCards`
module PlayingCards
  SUITS = %w(C D H S)

  RANKS = %w(2 3 4 5 6 7 8 9 T J Q K A)

  class Card
    getter rank, suit

    def initialize(rank : String, suit : String)
      @rank = rank
      @suit = suit
    end
  end

  class Deck
    getter cards : Array(Card)

    def initialize
      @cards = RANKS.flat_map do |rank|
        SUITS.map do |suit|
          Card.new(rank, suit)
        end
      end
    end

    def self.shuffle!
      new.tap &.shuffle!
    end

    def shuffle!
      @cards.shuffle!
    end

    def deal(amount)
      # TODO: Can't deal more cards than are in the deck
      @cards.shift(amount)
    end
  end
end

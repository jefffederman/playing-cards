require "./spec_helper"

describe PlayingCards do

  it "has suits" do
    PlayingCards::SUITS.should eq(%w(C D H S))
  end

  it "has ranks" do
    PlayingCards::RANKS.should eq(%w(2 3 4 5 6 7 8 9 T J Q K A))
  end

  describe PlayingCards::Card do
    it "has a rank" do
      card = PlayingCards::Card.new("5", "D")
      card.rank.should eq("5")
    end

    it "has a suit" do
      card = PlayingCards::Card.new("5", "D")
      card.suit.should eq("D")
    end
  end

  describe PlayingCards::Deck do
    it "has 52 cards" do
      deck = PlayingCards::Deck.new.cards
      deck.size.should eq(52)
    end

    it "shuffles the cards" do
      deck = PlayingCards::Deck.new
      deck.cards.first.rank.should eq("2")
      deck.cards.first.suit.should eq("C")
      unshuffled = deck.cards.dup
      deck.shuffle!
      deck.cards.should_not eq(unshuffled)
    end

    it "deals the cards" do
      deck = PlayingCards::Deck.new
      reference = deck.cards.dup
      dealt = deck.deal(3)
      dealt.should eq(reference[0..2])
      deck.cards.should eq(reference[3..-1])
    end

    it "offers a convenience method to init and shuffle all at once" do
      deck = PlayingCards::Deck.shuffle!
      deck.should be_a(PlayingCards::Deck)
    end
  end
end

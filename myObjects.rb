class PackOfCards

  attr_reader :shuffledDeck, :pack

  def initialize()
    # make a PACK of cards for use
    suit = ['2','3','4','5','6','7','8','9','10','J','Q','K','A']
    @pack = []
    4.times do
      @pack += suit
    end

  end

  def shuffle
    # shuffle the pack
    # we do this by using the Ruby rand() function and passing the
    # size of the remaining pack
    @shuffledDeck = []
    (0...@pack.size).each do |n|
      numCards = @pack.size                    # current size of the deck
      nextCard = @pack.slice!(rand(numCards))  # randomly selects a card
      @shuffledDeck.push(nextCard)
    end
  end


end

# make an instance of the Object
cards = PackOfCards.new
# show the current value of the pack attribute
puts cards.pack.inspect
puts cards.shuffledDeck.inspect
# now shuffle the cards
cards.shuffle
# now look at the Shuffled Deck
puts cards.shuffledDeck.inspect
# notice that the pack is now empty
puts cards.pack.inspect

# what we will use. 

class Word
  attr_reader :word
  WORDS = ["Car","State"]
  def initialize
    @word = Word::WORDS.sample
  end
end

class Game
  attr_reader :word
  def initialize
    @word = Word.new
  end
end

g = Game.new
g.word.word

#############

# what jason oringally did
class Game
  WORDS = ["Car","State"]
  attr_reader :word
  def initialize
    @word = Game::WORDS.sample
  end
end

g = Game.new
g.word

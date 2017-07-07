class Word
  @@words = []
  attr_reader :word, :id
  define_method(:initialize) do |word|
    @word = word
    @id = @@words.length.+(1)
  end
  define_singleton_method(:all) do
    @@words
  end
  define_method(:save) do
    @@words.push(self)
  end
  define_method(:clear) do
    @@words = []
  end
  define_method(:find) do |identity|
    found_word = nil
    @@words.each do |word|
      found_word = word if word.id.eql?(identity.to_i)
    end
    found_word
  end
 end

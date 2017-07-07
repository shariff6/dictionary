class Word
  @@words = []
  attr_reader :word, :id
  define_method(:initialize) do |word|
    @word = word
    @id = @@words.length.+(1)
  end
end

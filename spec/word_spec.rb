require('rspec')
require('word')
require('definition')

describe(Word) do
  before do
    Word.clear
  end
  describe("#word") do
    it "returns the word" do
      test_word = Word.new("Happy")
      expect(test_word.word).to(eq("Happy"))
    end
  end
  describe("#save") do
    it "saves a word to an array" do
      test_word = Word.new("happy")
      test_word.save
      expect(Word.all).to(eq([test_word]))
    end
  end
end

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
  describe("definitions") do
    it "test if empty array of definition is initially returned" do
      test_word = Word.new("happy")
      expect(test_word.definitions).to(eq([]))
    end
  end
  describe(".clear") do
    it "emptys the array containing words" do
      test_word = Word.new("happy").save
      Word.clear
      expect(Word.all).to(eq([]))
    end
  end
end

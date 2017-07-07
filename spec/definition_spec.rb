require('rspec')
require('definition')

describe('Definition') do
  before do
    Definition.clear()
  end

describe("#definition") do
  it "returns the definition" do
    test_definition = Definition.new("play")
    expect(test_definition.definition).to(eq("play"))
  end
end
describe("#save") do
  it "saves the definiton to an array" do
    test_definition = Definition.new("play")
    test_definition.save()
    expect(Definition.all).to(eq([test_definition]))
  end
end
describe(".all") do
  it "it is empty at first" do
    expect(Definition.all).to(eq([]))
  end
end
end

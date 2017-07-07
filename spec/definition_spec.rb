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
end

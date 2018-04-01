require_relative "../lib/space"
require_relative "../lib/person"

describe "Space" do
  describe ".call" do
    it 'creates the right number of objects given a space-delimited file' do
      expect(Parser::Space.("input/space.txt").count).to eq 4
    end

    it 'creates Person objects from the lines' do
      people = Parser::Space.("input/space.txt")

      people.each { |person| expect(person).to be_a Person }
    end
  end
end

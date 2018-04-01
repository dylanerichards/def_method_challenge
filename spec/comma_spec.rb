require_relative "../comma"
require_relative "../person"

describe "Comma" do
  describe ".call" do
    it 'creates the right number of objects given a comma-delimited file' do
      expect(Parser::Comma.("input/comma.txt").count).to eq 5
    end

    it 'creates Person objects from the lines' do
      people = Parser::Comma.("input/comma.txt")

      people.each { |person| expect(person).to be_a Person }
    end
  end
end

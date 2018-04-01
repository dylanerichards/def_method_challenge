require_relative "../lib/pipe"
require_relative "../lib/person"

describe "Pipe" do
  describe ".call" do
    it 'creates the right number of objects given a pipe-delimited file' do
      expect(Parser::Pipe.("input/pipe.txt").count).to eq 3
    end

    it 'creates Person objects from the lines' do
      people = Parser::Pipe.("input/pipe.txt")

      people.each { |person| expect(person).to be_a Person }
    end
  end
end

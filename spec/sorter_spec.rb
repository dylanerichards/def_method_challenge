require_relative "../sorter"
require_relative "../person"
require_relative "../space"
require_relative "../comma"
require_relative "../pipe"

describe "Sorter" do
  describe ".output_1" do
    it 'sorts space.txt: females first, then by last name ascending' do
      people = Sorter.output_1("input/space.txt")

      expect(people.map(&:last_name)).to eq ["Hingis", "Kournikova", "Seles", "Richards"]
    end
  end

  describe ".output_2" do
    it 'sorts comma.txt: by birth date, ascending then by last name ascending' do
      people = Sorter.output_2("input/comma.txt")

      expect(people.map(&:last_name)).to eq ["Aakerman", "Abercrombie", "Kelly", "Bishop", "Lello"]
    end
  end

  describe ".output_3" do
    it 'sorts pipe.txt: by last name, descending' do
      people = Sorter.output_3("input/pipe.txt")

      expect(people.map(&:last_name)).to eq ["Smith", "Bouillon", "Bonk"]
    end
  end
end

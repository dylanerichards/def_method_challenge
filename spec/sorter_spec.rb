require_relative "../lib/sorter"
require_relative "../lib/person"
require_relative "../lib/space"
require_relative "../lib/comma"
require_relative "../lib/pipe"

describe "Sorter" do
  describe ".call" do
    context "space as a delimiter" do
      it 'sorts space.txt: females first, then by last name ascending' do
        people = Sorter.("space").map(&:last_name)

        expect(people).to eq ["Hingis", "Kournikova", "Seles", "Richards"]
      end
    end

    context "comma as a delimiter" do
      it 'sorts comma.txt: by birth date, ascending then by last name ascending' do
        people = Sorter.("comma").map(&:last_name)

        expect(people).to eq ["Aakerman", "Abercrombie", "Kelly", "Bishop", "Lello"]
      end
    end

    context "pipe as a delimiter" do
      it 'sorts pipe.txt: last name, descending' do
        people = Sorter.("pipe").map(&:last_name)

        expect(people).to eq ["Smith", "Bouillon", "Bonk"]
      end
    end
  end
end

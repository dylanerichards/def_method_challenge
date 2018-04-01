require_relative "../lib/person"

describe Person do
  describe "#full_gender" do
    it 'returns Male when gender is M' do
      person = Person.new(nil, nil, nil, "M", nil, nil)

      expect(person.full_gender).to eq "Male"
    end

    it 'returns Male when gender is Male' do
      person = Person.new(nil, nil, nil, "Male", nil, nil)

      expect(person.full_gender).to eq "Male"
    end

    it 'returns Female when gender is F' do
      person = Person.new(nil, nil, nil, "F", nil, nil)

      expect(person.full_gender).to eq "Female"
    end

    it 'returns Female when gender is Female' do
      person = Person.new(nil, nil, nil, "Female", nil, nil)

      expect(person.full_gender).to eq "Female"
    end
  end
end

require_relative "../lib/presenters/person_presenter"

describe PersonPresenter do
  describe "to_s" do
    it 'displays a person in the desired way' do
      person = Person.new("Richards", "Dylan", "E", "M", "1/3/1995", "Green")
      presenter = PersonPresenter.new(person)

      expect(presenter.to_s).to eq "Richards Dylan Male 1/3/1995 Green"
    end
  end

  describe "#full_gender" do
    it 'returns Male when gender is M' do
      person = Person.new(nil, nil, nil, "M", nil, nil)
      presenter = PersonPresenter.new(person)

      expect(presenter.full_gender).to eq "Male"
    end

    it 'returns Male when gender is Male' do
      person = Person.new(nil, nil, nil, "Male", nil, nil)
      presenter = PersonPresenter.new(person)

      expect(presenter.full_gender).to eq "Male"
    end

    it 'returns Female when gender is F' do
      person = Person.new(nil, nil, nil, "F", nil, nil)
      presenter = PersonPresenter.new(person)

      expect(presenter.full_gender).to eq "Female"
    end

    it 'returns Female when gender is Female' do
      person = Person.new(nil, nil, nil, "Female", nil, nil)
      presenter = PersonPresenter.new(person)

      expect(presenter.full_gender).to eq "Female"
    end
  end
end

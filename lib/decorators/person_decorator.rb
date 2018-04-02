class PersonDecorator
  attr_accessor :person

  def initialize(person)
    @person = person
  end

  def full_gender
    { "M" => "Male", "F" => "Female" }[person.gender] || person.gender
  end
end

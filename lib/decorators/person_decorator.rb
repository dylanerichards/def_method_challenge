require 'forwardable'

class PersonDecorator
  extend Forwardable

  def_delegators :@person, :last_name, :first_name, :dob, :favorite_color, :gender

  def initialize(person)
    @person = person
  end

  def to_s
    "#{last_name} #{first_name} #{full_gender} #{dob} #{favorite_color}".strip
  end

  def full_gender
    { "M" => "Male", "F" => "Female" }[gender] || gender
  end
end

class Person
  attr_accessor :first_name, :last_name, :middle_initial, :gender, :dob, :favorite_color

  def initialize(last_name, first_name, middle_initial, gender, dob, favorite_color)
    @first_name = first_name
    @last_name = last_name
    @middle_initial = middle_initial
    @gender = gender
    @favorite_color = favorite_color
    @dob = dob
  end
end


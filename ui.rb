require_relative "lib/sorter"
require_relative "lib/decorators/person_decorator"

puts "Which file do you want to sort? 'comma', 'space', or 'pipe'? "

people = Sorter.(gets.chomp)

people.map { |person| puts PersonDecorator.new(person).to_s }

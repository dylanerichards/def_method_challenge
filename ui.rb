require_relative "lib/sorter"

puts "Which file do you want to sort? 'comma', 'space', or 'pipe'? "

people = Sorter.(gets.chomp)

people.map do |person|
  puts "#{person.last_name} #{person.first_name} #{person.full_gender} #{person.dob} #{person.favorite_color}"
end

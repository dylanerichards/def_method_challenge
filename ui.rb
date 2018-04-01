require_relative "lib/sorter"

puts "Which file do you want to sort? "

input_file_map = {
  "space" => Sorter.output_1("input/space.txt"),
  "comma" => Sorter.output_2("input/comma.txt"),
  "pipe" => Sorter.output_3("input/pipe.txt")
}

puts input_file_map[gets.chomp].map { |person| "#{person.last_name} #{person.first_name} #{person.full_gender} #{person.dob} #{person.favorite_color}"  }

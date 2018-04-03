require_relative "person"
require_relative "space"
require_relative "comma"
require_relative "pipe"
require          "date"

class Sorter
  SPACE = lambda  { |people| people.sort_by { |person| [person.gender, person.last_name] } }
  COMMA = lambda  { |people| people.sort_by { |person| [Date.strptime(person.dob,"%m/%d/%Y"), person.last_name] } }
  PIPE =  lambda  { |people| people.sort_by(&:last_name).reverse }

  def self.call(delimiter)
    const_get(delimiter.upcase).(Object.const_get("Parser::#{delimiter.capitalize}").("input/#{delimiter}.txt"))
  end
end


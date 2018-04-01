require "parser"

class Parser::Space
  def self.call(file_path)
    lines = File.readlines(file_path).map { |line| line.split(" ") }

    people = lines.map do  |line|
      Person.new(line[0],
                 line[1],
                 line[2],
                 line[3],
                 parsed_dob(line[4]),
                 line[5])
    end
  end

  private

  def self.parsed_dob(date)
    date.gsub("-", "/")
  end
end

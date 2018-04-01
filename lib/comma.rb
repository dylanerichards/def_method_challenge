require "parser"
require "date"


class Parser::Comma
  def self.call(file_path)
    lines = File.readlines(file_path).map { |line| line.split(",").map(&:strip) }

    people = lines.map do  |line|
      Person.new(line[0],
                 line[1],
                 nil,
                 line[2],
                 line[4],
                 line[3])
    end
  end
end

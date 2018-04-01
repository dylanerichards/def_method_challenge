require "parser"
require "date"


class Parser::Pipe
  def self.call(file_path)
    lines = File.readlines(file_path).map { |line| line.split("|").map(&:strip) }

    people = lines.map do |line|
      Person.new(line[0],
                 line[1],
                 line[2],
                 line[3],
                 line[5].gsub("-", "/"),
                 line[4])
    end
  end
end

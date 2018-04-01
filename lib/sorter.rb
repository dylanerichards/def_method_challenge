require_relative "person"
require_relative "space"
require_relative "comma"
require_relative "pipe"

class Sorter
  def self.output_1(file_path)
    Parser::Space.(file_path).sort_by { |player| [player.gender, player.last_name] }
  end

  def self.output_2(file_path)
    Parser::Comma.(file_path).sort_by { |player| [Date.strptime(player.dob,"%m/%d/%Y"), player.last_name] }
  end

  def self.output_3(file_path)
    Parser::Pipe.(file_path).sort_by(&:last_name).reverse
  end
end


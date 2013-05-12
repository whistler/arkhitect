require 'pry'
class Arkhitekt
  class Parse

    # convert the content of a block to arrays
    def self.tokenize(content)
      content.split("\n").map{|line| line.split(" ")}
    end

    # get title and content of a block
    def self.get_title_and_content(block)
      matches = block.match(/(.+)\n[-\s]+\n(.+)/ms)
      if matches != nil && matches.size == 3
        return matches[1].strip, Parse.tokenize(matches[2].strip)
      else
        return :default, tokenize(block.strip) 
      end
    end

    # extract input file into a ruby structure
    def self.get_blocks(input)
      input = input + "\n\n"
      #extract blocks
      blocks = input.scan(/^.*?\n\n/ms)

      sections = Hash.new
      blocks.each do |block|
        title, content = Parse.get_title_and_content(block.strip)
        sections[title] = [] if sections[title] == nil
        sections[title] += content
      end

      sections
    end

  end
end
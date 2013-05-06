require 'pry'
class Arkhitekt
  class Parse
    def self.get_blocks(input)
      input = input + "\n\n"
      #extract blocks
      blocks = input.scan(/^(.*?)-+(.*?)\n\n/ms)
      #get rid of extra whitespaces
      blocks = blocks.map{|block| block.map{|str| str.strip}}
      #convert to a hash
      blocks = Hash[*blocks.flatten]
      #convert string with lines into array
      blocks.each do |block, content|
        blocks[block] = content.split("\n")
      end
    end
  end
end
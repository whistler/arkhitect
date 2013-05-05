#!/usr/bin/env ruby

class Arkhitekt


  def initialize(filename)
    @filename = filename
    load_config
  end

  def load_config
  end

  def load_content

  end

  def generate_er_diagram
  end


end

if ARGV.count != 1 then
  puts "useage: arkhitekt input.txt"
else
  #cat $FILENAME | ergen | dot -Tpng -Kneato -odiagram.png
  arkhitekt = Arkhitekt.new(ARGV[1])
end

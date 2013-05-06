#!/usr/bin/env ruby
require_relative 'arkhitekt/parse'

class Arkhitekt


  def initialize(filename)
    @filename = filename
    @settings = Hash.new
    load_config
    load_content
  end

  def load_config
    file = "~/.arkhitekt" if File.exist?("~/.arkhitekt")
    file = ".arkhitekt" if File.exist?(".arkhitekt")
    if file == nil
      load_default_config
    else
      puts "TODO: Load config file"
    end
  end

  def load_content
    file = File.open(@filename, "rb")
    Arkhitekt::Parse.get_blocks(file.read)
  end

  def generate_er_diagram

  end

  def generate_object_diagram

  end

  def generate_class_diagram

  end

  def load_default_config
    @settings[:entity] = {fontname: 'helvetica', fontsize: 12, color: 'grey', style: 'filled'}
    @settings[:relation] = {fontname: 'helvetica', fontsize: 12, color: 'grey', style: 'filled'}
    @settings[:edge] = {fontname: 'helvetica', fontsize: 12, color: 'grey', style: 'filled'}
    @settings[:attribute] = {fontname: 'helvetica', fontsize: 12, color: 'grey', style: 'filled'}
    @settings[:primary_attribute] = {fontname: 'helvetica', fontsize: 12, color: 'grey', style: 'filled'}
    @settings[:filetype] = 'png'
    @settings[:filter] = 'neato'
  end

end

if ARGV.count != 1 then
  puts "useage: arkhitekt input.txt"
else
  #cat $FILENAME | ergen | dot -Tpng -Kneato -odiagram.png
  arkhitekt = Arkhitekt.new(ARGV[0])
end

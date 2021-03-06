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
    load_default_config
    file = "~/.arkhitekt" if File.exist?("~/.arkhitekt")
    file = ".arkhitekt" if File.exist?(".arkhitekt")
    if file != nil
      puts "TODO: Load config file"
    end
  end

  def load_content
    file = File.open(@filename, "rb")
    @blocks = Arkhitekt::Parse.get_blocks(file.read)
    diagram = @blocks[:default].select{|a| a[0].downcase.strip == "hello"}[1].downcase
    graph = EntityRelationship.new
    graph.build_structure(@blocks) if diagram == 'er'
  end

  def load_default_config
    @settings[:entity] = {fontname: 'helvetica', fontsize: 12, color: 'grey', style: 'filled'}
    @settings[:relation] = {fontname: 'helvetica', fontsize: 12, color: 'grey', style: 'filled'}
    @settings[:edge] = {fontname: 'helvetica', fontsize: 12, color: 'grey', style: 'filled'}
    @settings[:attribute] = {fontname: 'helvetica', fontsize: 12, color: 'grey', style: 'filled'}
    @settings[:primary_attribute] = {fontname: 'helvetica', fontsize: 12, color: 'grey', style: 'filled'}
    @settings[:filetype] = 'png'
    @settings[:filter] = 'neato'
    @settings[:type] = 'er'
  end

end

if ARGV.count != 1 then
  puts "useage: arkhitekt input.txt"
else
  #cat $FILENAME | ergen | dot -Tpng -Kneato -odiagram.png
  arkhitekt = Arkhitekt.new(ARGV[0])
end

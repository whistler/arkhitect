class Relation < Entity
  attr_reader :entities, :attributes
  def initialize(label, block)
    @label = label
    block.each do |item|
      if item.count == 1
        self << Attribute.new(item.first, self)
      else
      end
    @entities = entities
    @attributes = 
  end
end
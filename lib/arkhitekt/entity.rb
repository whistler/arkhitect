class Entity
  attr_reader :label, :attributes
  def initialize(label, attributes = [])
    @label = label
    @attributes = attributes.map{|a| Attribute.new(a, @label)}
  end
end
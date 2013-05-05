class Relation < Entity
  attr_reader :left, :right
  def initialize(label, left, right, attributes = [])
    super(label, attributes)
    @left = left
    @right = right
  end
  def edges
    [@left, @right]
  end
end
class Edge
  attr_reader :entity, :cardinality
  def initialize(entity, cardinality)
    @entity = entity
    @cardinality = cardinality
  end
end
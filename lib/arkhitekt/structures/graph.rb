class Graph < Array
  def entity_by_name(name)
    self.find {|e| e.label == name}
  end

  def entities
    self.find_all {|e| e.class == Entity }
  end

  def relations
    self.find_all {|e| e.class == Relation }
  end
end
class EntityRelationship < Array

  def build_structures(blocks)
    blocks.each do |block|
      if is_relation(block)
        object = Relation.new(block)
      else
        object = Entity.new(block)
      end
    end
  end

  def generate

  end

  private

  def is_relation(block)
    return block.flatten.count == block.count
  end

end
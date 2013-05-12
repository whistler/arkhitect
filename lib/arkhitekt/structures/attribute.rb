class Attribute
  def initialize(label, owner)
    @label = label
    @owner = owner
  end
  def label
    @label.gsub(/^[+]{1}/, "")
  end
  def name
    [@owner, self.label].join("-")
  end
  def primary?
    @label.match(/^[+]{1}/)
  end
end
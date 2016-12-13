class Definition

  @@definitions = []
  attr_reader(:define, :pOs)

  def initialize(attributes)
    @define = attributes[:define]
    @pOS = attributes[:pOs]
  end

  def save
    @@definitions.push(self)
  end

  def self.all
    @@definitions
  end
end

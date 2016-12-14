class Definition

  @@definitions = []
  attr_reader(:define)

  def initialize(attributes)
    @define = attributes.fetch(:define)
  end

  def save
    @@definitions.push(self)
  end

  def self.all
    @@definitions
  end
end

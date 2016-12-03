class Definition

  @@definitions = []
  attr_reader(:define)

#---Class Initialization---
  def initialize(attributes)
    @define = attributes[:define]
  end

#----Instance Methods---

  def save
    @@definitions.push(self)
  end

#----Class Methods----

  def self.all
    @@definitions
  end
end

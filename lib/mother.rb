class Mother
  @children = []
  def self.inherited(subclass)
    @children << subclass
  end

  def self.phone_kids
    @children.each do |child|
      child.phone
    end
  end
end

# Daughter and Son are classes inheriting from Mother. They are defined
# in the specs, no need to create them.

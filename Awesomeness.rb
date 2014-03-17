class Awesomeness
  attr_accessor :objects
  def initialize
    @objects = []
    @objects << AnObject.new("Sun", 0)
    @objects << AnObject.new("Mercury", 1)
    @objects << AnObject.new("Venus", 2)
    @objects << AnObject.new("Earth", 3)
    @objects << AnObject.new("Mars", 4)
    @objects << AnObject.new("Jupiter", 5)
    @objects << AnObject.new("Saturn", 6)
    @objects << AnObject.new("Uranus", 7)
    @objects << AnObject.new("Neptune", 8)
    @objects << AnObject.new("Pluto", 9)
    @objects << AnObject.new("KeiperBelt", 10)
  end

  def most_awesome
    max = @objects.max {|a,b| a.awesomeness <=> b.awesomeness }
    return max.name
  end

  def avg_awesome
    sum = 0
    @objects.each do |object|
      sum += object.awesomeness
    end
    return sum/@objects.length
  end

  def print
    test = ""
    @objects[0..9].each do |object|
      test << object.name + " "
      puts object.name
    end
    test = test.strip
    return test
  end
end

class AnObject
  attr_accessor :name, :awesomeness
  def initialize(name, awesomeness)
    @name = name
    @awesomeness = awesomeness
  end
end


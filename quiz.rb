require 'rspec'

class Vehicle
  attr_accessor :doors, :year, :color, :wheels

  def initialize(attributes = {})
    mass_assign attributes
    @flight = false
  end

  def flyable?
    !!@flight
  end

  # @TODO override def color=(value) to turn value into a symbol
  def color=(value)
    @color = value
  end

  private
  def mass_assign(attributes)
    attributes.each do |key, value|
      public_send("#{key}=", value)
    end
  end
end

class Car < Vehicle
  attr_accessor :cruise_control

  def initialize(*args)
    super
    self.wheels = 4
  end
end

class Motorcycle < Vehicle
  def initialize(*args)
    super
    # @TODO set the number of wheels and doors
  end
end

class Helicopter < Vehicle
  def initialize(*args)
    super
    # @TODO enable flight
  end
end

class Color
  # @TODO add an attribute reader (getter) for color

  def initialize(color)
    @name = color
  end

  # @TODO implement to_sym so that it returns @name as a symbol
  def to_sym
  end
end

class TheWorld
  attr_accessor :student, :teacher

  def probe
    Car.new(doors: 2, color: 'red', year: 1997)
  end

  def jeep
    # @TODO create a black four door car that is a 2014
  end

  def motorcycle
    Motorcycle.new(color: chrome, year: 2003)
  end
  
  def chrome
    # @TODO create a Color that is chrome
  end
end

$world = TheWorld.new
$world.teacher = "Adam"

# @TODO set your name to the student attribute on $world

def greet(name)
  puts "Hi there #{name}!"
end

# @TODO greet the teacher by calling the greet function with the teacher attribute of $world

module Vehicle

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

end

class Car

  attr_reader :direction

  include Vehicle

  def initialize(vehicle_hash)
    @speed = 0
    @direction = 'north'
    @fuel = vehicle_hash[:fuel]
    @make = vehicle_hash[:make]
    @model = vehicle_hash[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end

end

class Bike

  include Vehicle

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def ring_bell
    puts "Ring ring!"
  end

end

class MountainBike < Bike

  attr_reader :direction

  def vroom
    puts "Vroooooooooom!"
  end

end

car = Car.new(fuel: 50, make: "Ford", model: "Mustang")
car.honk_horn

car.turn('west')

puts car.direction

bike = Bike.new
bike.ring_bell

mtbike = MountainBike.new
mtbike.vroom

mtbike.turn('east')
puts mtbike.direction
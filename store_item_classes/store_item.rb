class Guitar

  attr_reader :brand, :model, :color

  def initialize(guitar_hash)
    @brand = guitar_hash[:brand]
    @model = guitar_hash[:model]
    @color = guitar_hash[:color]
  end

  def info 
    puts "This is a #{color} #{brand} #{model}."
  end

  def tune_guitar
    puts "annoying repetitive noises"
  end

  def play_guitar
    puts "c c g g a a g"
  end

  def smash_guitar
    puts "Hulk SMASH CRASH"
  end

end

class Electric_Guitar < Guitar

  attr_reader :pickup_type, :bridge_type

  def initialize(guitar_hash)
    super
    @pickup_type = guitar_hash[:pickup]
    @bridge_type = guitar_hash[:bridge]
  end

  def info
    super
    puts "It is an electric guitar with #{pickup_type} pickups and a #{bridge_type} bridge."
  end

  def play_electric_song
    puts "Purple Haze all in my brain, lately things just don't seem the same"
  end

end

class Acoustic_Guitar < Guitar

  attr_reader :acoustic_type, :string_type

  def initialize(guitar_hash)
    super
    @acoustic_type = guitar_hash[:acoustic_type]
    @string_type = guitar_hash[:string]
  end

  def info
    super
    puts "It is an #{acoustic_type} guitar with #{string_type} strings."
  end

  def play_typical_song
    puts "Today is gonna be the day that they're gonna throw it back to you"
  end

end

electric_guitar_1 = Electric_Guitar.new(brand: "Ibanez", model: "JEM", color: "white", pickup: "passive", bridge: "floyd rose")
acoustic_guitar_1 = Acoustic_Guitar.new(brand: "Martin", model: "000C", color: "natural wood color", acoustic_type: "classical", string: "nylon")

electric_guitar_1.info

acoustic_guitar_1.info
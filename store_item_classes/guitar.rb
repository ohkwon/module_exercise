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
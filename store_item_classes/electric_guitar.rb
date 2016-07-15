module Guitar_Program
  
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

end
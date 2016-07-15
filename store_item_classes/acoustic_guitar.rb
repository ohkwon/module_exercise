module Guitar_Program

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

end

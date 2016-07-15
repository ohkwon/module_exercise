require "./guitar"
require "./electric_guitar"
require "./acoustic_guitar"

electric_guitar_1 = Electric_Guitar.new(brand: "Ibanez", model: "JEM", color: "white", pickup: "passive", bridge: "floyd rose")
acoustic_guitar_1 = Acoustic_Guitar.new(brand: "Martin", model: "000C", color: "natural wood color", acoustic_type: "classical", string: "nylon")

electric_guitar_1.info

acoustic_guitar_1.info

electric_guitar_1.tune_guitar

acoustic_guitar_1.play_guitar

electric_guitar_1.play_electric_song

acoustic_guitar_1.play_typical_song

acoustic_guitar_1.smash_guitar
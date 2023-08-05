speed_multiplier = 1.8
define :seg do |n, hold|
  play n, release: hold + 0.1 * speed_multiplier
  sleep hold * speed_multiplier
end
use_synth :dsaw

play :d4
play :g4








seg :G4, 0.25
seg :g4, 3.0/8.0

seg :g4, 0.125
seg :f4, 1.0/16.0
seg :e4, 1.0/16.0
seg :d4, 0.5

seg :f4, 1.0/8.0
seg :e4, 1.0/4.0
seg :c4, 3.0/8.0

seg :e4, 1.0/8.0
seg :d4
















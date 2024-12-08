
# LINUX
#   bundle exec ruby midi.rb 
#   Could not open library 'libasound.so': libasound.so: cannot open shared object file: No such file or directory





require "micromidi"

# prompt the user to select an input and output

# @input = UniMIDI::Input.gets

@output = UniMIDI::Output.gets
# The user will see a list that reflects their local MIDI configuration, and be prompted to select a number
# Select a MIDI output
# 1) IAC Device
# 2) Roland UM-2 (1)
# 3) Roland UM-2 (2)

MIDI.using(@output) do

  5.times do |oct|
    octave oct
    %w{C E G B}.each { |n| play n, 0.5 }
  end

end

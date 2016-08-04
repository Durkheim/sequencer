def sequencer(list_of_integers)
  sequenced_string = ''
  list_of_integers.each_with_index do |integer, index|
    next_integer = list_of_integers[index + 1]
    sequenced_string += integer.to_s
    unless next_integer.nil?
      next_integer - integer == 1 ? sequenced_string += "-" : sequenced_string += ","
      trim_mid_range_integers(sequenced_string, integer)
    end
  end
  sequenced_string
end

def trim_mid_range_integers(sequenced_string, integer)
  if sequenced_string.end_with?("-#{integer}-")
    mid_range_index = sequenced_string.length - integer.to_s.length - 1
    sequenced_string.slice!(mid_range_index, sequenced_string.length)
  end
end
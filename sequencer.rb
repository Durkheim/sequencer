def sequencer(list_of_integers)
  sequenced_string = ''
  list_of_integers.each_with_index do |integer, index|
    sequence_start = index == 0
    next_integer = list_of_integers[index + 1]
    sequenced_string += integer.to_s
    unless next_integer.nil?
      next_integer - integer == 1 ? sequenced_string += "-" : sequenced_string += ","
      sequenced_string.slice!(sequenced_string.length - integer.to_s.length - 1, sequenced_string.length) if !sequence_start && sequenced_string.end_with?("-#{integer}-")
    end
  end
  sequenced_string
end


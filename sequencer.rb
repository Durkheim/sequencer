#Pseudocode


def sequencer(list_of_integers)
  sequenced_string = ''
  list_of_integers.each_with_index do |integer, index|
    sequenced_string
    next_integer = list_of_integers[index + 1]
    previous_integer = list_of_integers[index - 1]

    case
      when index == 0
        start_range?(next_integer, integer, previous_integer, index) ? sequenced_string += integer.to_s + "-" : sequenced_string += integer.to_s + ","
      when !next_integer
      when mid_range?(next_integer, integer, previous_integer)
      when end_range?(next_integer, integer, previous_integer)
        sequenced_string += integer.to_s + ","
    end
  end

end

def start_range?(next_integer, current_integer, previous_integer, index)
  index == 0 ? next_integer - current_integer == 1 : next_integer - current_integer == 1 && current_integer - previous_integer != 1
end

def mid_range?(next_integer, current_integer, previous_integer)
  next_integer - current_integer == 1 && current_integer - previous_integer == 1
end

def end_range?(next_integer, current_integer, previous_integer)
  next_integer ? next_integer - current_integer != 1 && current_integer - previous_integer == 1 :
end
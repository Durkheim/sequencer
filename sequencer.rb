#Pseudocode

class Sequencer
  class << self

    def generate_string(list_of_integers)
      sequenced_string = ''
      list_of_integers.each_with_index do |integer, index|
        next_integer = list_of_integers[index + 1]
        previous_integer = list_of_integers[index - 1]
        if index == 0
            start_range?(next_integer, integer, previous_integer, index) ? sequenced_string += integer.to_s + "-" : sequenced_string += integer.to_s + ","
        elsif index == list_of_integers.length - 1
            sequenced_string += integer.to_s
        elsif start_range?(next_integer, integer, previous_integer, index)
          sequenced_string += integer.to_s + "-"
        elsif mid_range?(next_integer, integer, previous_integer)
        else
          sequenced_string += integer.to_s + ","
        end
      end
      sequenced_string
    end

    private

    def start_range?(next_integer, current_integer, previous_integer, index)
      index == 0 ? next_integer - current_integer == 1 : next_integer - current_integer == 1 && current_integer - previous_integer != 1
    end

    def mid_range?(next_integer, current_integer, previous_integer)
      next_integer - current_integer == 1 && current_integer - previous_integer == 1
    end

  end

end
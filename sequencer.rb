
def sequencer(list_of_integers)
  concatenate = []
  ordered_sequence = []
  list_of_integers.each_index do |integer_index|
    if integer_index < list_of_integers.index(list_of_integers.last)
      if list_of_integers[integer_index+1] - list_of_integers[integer_index] == 1
        ordered_sequence << list_of_integers[integer_index]
        ordered_sequence << list_of_integers[integer_index + 1]
        ordered_sequence.uniq!
      else
        if !ordered_sequence.empty?
          concatenate << ordered_sequence.first.to_s + "-" + ordered_sequence.last.to_s
          ordered_sequence.clear
        else
          concatenate << list_of_integers[integer_index].to_s
        end
      end
    else
      if !ordered_sequence.empty?
          concatenate << ordered_sequence.first.to_s + "-" + ordered_sequence.last.to_s
      else
        concatenate << list_of_integers[integer_index].to_s
      end
    end
  end
  concatenate.join(",")
end

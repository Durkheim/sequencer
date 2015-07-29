
def sequencer(list_of_integers)
  concatenate = []
  sequence = []
  list_of_integers.each_index do |integer_index|
    if integer_index < list_of_integers.index(list_of_integers.last)
      if list_of_integers[integer_index+1] - list_of_integers[integer_index] == 1
        sequence << list_of_integers[integer_index]
        sequence << list_of_integers[integer_index + 1]
        sequence.uniq!
      else
        if !sequence.empty?
          concatenate << sequence.first.to_s + "-" + sequence.last.to_s
          sequence.clear
        else
          concatenate << list_of_integers[integer_index].to_s
        end
      end
    else
      if !sequence.empty?
          concatenate << sequence.first.to_s + "-" + sequence.last.to_s
      else
        concatenate << list_of_integers[integer_index].to_s
      end
    end
  end
  concatenate.join(",")
end

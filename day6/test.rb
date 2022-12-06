full_string = File.read('./day6/input.txt').split('')

# check if elements of an array is unique
def unique?(array)
  array.uniq == array
end

def start_of_packet(range, input)
  length = 0
  temp_store = []
  input.each do |char|
    first_set = input.slice(0, range)
    if unique?(first_set)
      length = temp_store.length + range
      return length
    else
      temp_store << char
      input = input.drop(1)
    end
  end
end

puts start_of_packet(14, full_string)
puts start_of_packet(4, full_string)

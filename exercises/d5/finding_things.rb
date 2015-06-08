
# method to find index of first time a letter occurs in a string
def index_of(string, letter)
  array = string.split("")
  array.each_with_index do |array, index|
    if(array == letter)
      puts "The letter #{letter} first occurs at index #{index}."
      return index
    end
  end
  puts "Error. There's no #{letter} in \"#{string}\""
  return -1
end


#method to find a name in a hash
def find_by_name(array, name)
  array.each_with_index do |array, index|
    if(array[:name] == name)
      puts "The name #{name} occurs at index #{index}."
      return index
    end
  end
  puts "Error. There's no #{name} in array."
  return -1
end

# method 
def filter_by_name (array, name)
    new_array = []
    array.each do |element|
      if(element[:name] == name)
        new_array << element
      end
    end
    return new_array
end

#test code
people = [
  {
    :id => 1,
    :name => "bru"
  },
  {
    :id => 2,
    :name => "ski"
  },
  {
    :id => 3,
    :name => "brunette"
  },
  {
    :id => 4,
    :name => "ski"
  }
]
index_of("hey there. how's it going?", "3")
find_by_name(people, "bru")
puts = filter_by_name(people, "bru")

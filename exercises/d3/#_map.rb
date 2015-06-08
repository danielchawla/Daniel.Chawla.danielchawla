# map.rb

engines = ["Google", "Bing", "Ask Jeeves"]
result = engines.map do |e|
  if e == "Google"
    "OK"
  elsif e == "Bing"
    "Bad!"
  else
    "What is that?"
  end
end

puts "#{result}"


#[1,2,3].map { |element| element * 3 }
puts "Hello"

puts "How old are you?"

age_user = gets

puts "How old is your mom?"

age_mom = gets

puts "How old is your dad?"

age_dad = gets

average_age = (age_user.to_i + age_dad.to_i + age_mom.to_i)/3.0

puts "Thanks for answering my creepy questions! The average age of your family is #{average_age} years old!"
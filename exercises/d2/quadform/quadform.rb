puts "Hey bro. Let's compute some quadratic roots."

puts "Give me an A value"
a = gets.to_f
puts "Give me a B value"
b = gets.to_f
puts "Give me a C value"
c = gets.to_f

puts "Computing..."

x_1 = (-b + Math.sqrt(b*b - 4*a*c))/(2*a)
x_2 =  (-b - Math.sqrt(b*b - 4*a*c))/(2*a)

puts "x is either #{x_1} or #{x_2}"
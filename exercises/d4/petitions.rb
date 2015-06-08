require 'rest-client'
require 'json'

# greet user
puts "Hello. Welcome to White House Petitions\n\n"
puts "Would you like to see open petitions or closed petitions. Enter 'open' or 'closed'."
petition_status = gets.strip

puts "Showing petitions of status open..."

offset = 0

while true
	begin
		response = RestClient.get "https://api.whitehouse.gov/v1/petitions.json?status=#{petition_status}&offset=#{offset}"
	rescue
	end

	parsed_response = JSON.parse(response)
	petitions = parsed_response["results"]

	if petitions.empty?
		puts "No more petitions to show."
		break
	end

# print each petition
	petitions.each_with_index do |petitions, index|
		puts "#{index+1+offset}. [#{petitions["status"].upcase}] #{petitions["title"]}"
	end
	offset += 10
	puts "Would you like to see more? Enter anything to continue. Enter 'n' to quit)"
	show_more = gets.strip
	break if gets.strip == "n"
end


# goodbye

puts "\nThanks. Have a good day."


require 'rest-client'
require 'json'

puts "Welcome to Reddit!\n\n"
puts "What stories would you like to see ('top' or 'hot')?"

choice = gets.strip

puts "Here are today's #{choice} posts."

offset = 0

while true
	response = RestClient.get "http://www.reddit.com/#{choice}.json?limit=10"

	parsed_response = JSON.parse(response)

	stories = parsed_response["data"]["children"]

	if stories.empty?
    	puts "No more Funny to show."
    	break
  	end

	stories.each_with_index do |stories, index|
		puts "#{index+1+offset}. #{stories["data"]["title"]}"
	end

	offset += 10

  	puts "\nWould you like to see more? (y/n)"

  	break if gets.strip == "n"
  	puts ""
end


# goodbye
puts "Thanks, bye!"

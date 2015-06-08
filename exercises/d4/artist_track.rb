require 'rest-client'
require 'json'

# greet user
puts "Hello. Welcome to Artist Stalker.\n\n"
offset = 0

# start while loop
while true
	puts "Which artist would you like to stalk?"
	artist_to_stalk = gets.strip

	#selects artist to stalk
	puts "Searching for artist..."
	artist_info = RestClient.get "http://api.songkick.com/api/3.0/search/artists.json?query=#{artist_to_stalk}&apikey=#{your_api_key}"
	parsed_artist_info = JSON.parse(artist_info)
	artist_id = parsed_artist_info["resultsPage"]["results"]["artist"][0]["id"]

	event_info = RestClient.get "http://api.songkick.com/api/3.0/artists/#{}{artist_id}/calendar.json?apikey=#{your_api_key}"
	parsed_event_info = JSON.parse(event_info)
	parsed_event_info.each_with_index do |parsed_event_info, index|
		puts "#{index+1+offset}. Date: #{parsed_event_info["resultsPage"]["resuts"]["event"]["start"]["date"]} 
			Location: #{parsed_event_info["resultsPage"]["resuts"]["event"]["location"]["city"]}."
	end

	if parsed_event_info.empty?
		puts "No locations to show."
		break
	end
	
	offset += 10
	puts "Would you like to see more? Enter anything to continue. Enter 'n' to quit)"
	show_more = gets.strip
	break if gets.strip == "n"
end

puts "\nThanks. Have a good day."
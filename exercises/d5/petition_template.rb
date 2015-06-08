require 'rest-client'
require 'json'

# greet the user
puts "Hello! Welcome to the Reddit Funny!\n\n"

# puts "What kind of petitions would you like to see? ('open' or 'closed')"

# status = gets.strip
offset = 0

puts "Lastest posts in Reddint Funny"

while true
  # get the petitions
  begin
    response = RestClient.get "http://www.reddit.com/r/funny.json"
  rescue SocketError
    puts "Sorry! There was an error getting Funny."
    break
  end

  parsed_response = JSON.parse(response)

  funny = parsed_response["data"]["children"]

  if funny.empty?
    puts "No more Funny to show."
    break
  end

  # print each petition
  funny.each_with_index do |funny, index|
    puts "#{offset+index+1}. #{funny["data"]["title"]}"
  end

  offset += 26

  puts "\nWould you like to see more? (y/n)"

  break if gets.strip == "n"
end

puts ""

# goodbye
puts "Thanks, bye!"
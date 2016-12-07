require 'rest-client'

print "What would you like to search for?"
response = gets.chomp
response = response.split.join("+")
url = 'https://www.google.com/#q=' + response

puts "You searched for:"
puts response

client = RestClient.get(url)

puts
puts "Server response code:"
puts client.code
puts

puts "Cookies:"
puts client.cookies
puts

puts "Headers:"
puts client.headers
puts

puts "Body:"
puts client.body

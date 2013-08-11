puts "Would you like to play a math game?"

input.gets

if input == "yes"
  puts "it works"

elsif input == "no"
  puts "goodbye"

end


multiple = 0

iterator = 0

a = Array.new

while multiple < 10

if (multiple%3 == 0)

  a[iterator] = multiple
  multiple = multiple + 1
  iterator = iterator + 1

elsif (multiple%5 == 0)

  a[iterator] = multiple
  multiple = multiple + 1
  iterator = iterator + 1

else

  multiple = multiple + 1

end

end

#final = a.inject{|sum, x| sum + x}

#puts final
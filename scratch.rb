=begin 
I used scratch.rb as a reusable file on my first pass of the intro to Ruby book for doing some exercises and testing my own curiosities. 
I didn't fully understand that I should save each exercise as a seperate file and thought that the whole book was chapter 1 (lol).
=end

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

puts contacts
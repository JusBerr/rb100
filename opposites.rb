def valid_number?(number_string)
  number_string.to_i.to_s == number_string.to_s && number_string.to_i != 0
end

number_1 = nil
number_2 = nil

puts "Let's add a postive and negative integer together!"

loop do
  puts "Enter a positive or negative integer:"
  number_1 = gets.chomp
  puts "Enter a positive or negative integer:"
  number_2 = gets.chomp
  
  break if valid_number?(number_1) && valid_number?(number_2) && number_1.to_i * number_2.to_i < 0
  
  if 
    valid_number?(number_1) && valid_number?(number_2) && number_1.to_i * number_2.to_i > 0
    puts "Invalid input. One must be positive and the other negative!"
  else 
    puts "Invalid input. Only non-zero integers are allowed."
  end
end

puts "#{number_1} + #{number_2} = #{number_1.to_i + number_2.to_i}"
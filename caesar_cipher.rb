def caesar_cipher(string, shift)
  # assigns shift to key
  shift_key = shift
  # the size of the alphabet
  alpha_size = 26
  # creates an array of strings and use ampersand shortcut to iterate and assign each character an ASCII value using the #ord method
  str_to_ascii_arr = string.split("").map(&:ord)

  shift_ascii_arr = str_to_ascii_arr.map do |val|
    case val
      # ASCII lowercase alphabet value
    when 65..(90 - shift_key)
      val + shift_key
      # ASCII uppercase alphabet value
    when 97..(122 - shift_key)
      val + shift_key
      # lowercase alphabet wrap
    when (90 - shift_key)..90
      val - (alpha_size - shift_key)
      # uppercase alphabet wrap
    when (122 - shift_key)..122
      val - (alpha_size - shift_key)
      # any value like space, numbers, punction, etc that doesn't change
    else
      val
    end
  end

  str_ciphered = shift_ascii_arr.map { |c| c.chr }.join

  p str_ciphered
end

puts "Hello human! This is an encryption device..."

puts "...please enter a message to encrypt."

message = gets.chomp

puts "Please enter an encryption key number between 1 and 26..."

encryption_key = gets.chomp.to_i

# safegard that encryption key is a number between 1 and 26
# only gives user one chance to enter a number between 1 and 26 or it exits program
if encryption_key.class == Integer && encryption_key.between?(1, 26)
  caesar_cipher(message, encryption_key)
else 
  puts "Hey human...enter a number between 1 and 26 or this session will end..."

  encryption_key = gets.chomp.to_i

  if encryption_key.class == Integer && encryption_key.between?(1, 26)
  caesar_cipher(message, encryption_key)
  else
    puts "You are not a human!"
  end
end

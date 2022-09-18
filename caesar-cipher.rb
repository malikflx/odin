# Task
# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

#   > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"
# Quick Tips:

# You will need to remember how to convert a string into a number.
# Don’t forget to wrap from z to a.
# Don’t forget to keep the same case.

# Solution  
def caesar_cipher(string, shift)
  for i in 0...string.length do
    converted_char = string[i].ord

    (a, z) = case converted_char
             when 65..90 then [65, 90]
             when 97..122 then [97, 122]
             else next
    end
    if (shift > 0)
      rotate = 26
    else 
      rotate = -26
    end

    if converted_char.between?(a,z)
      converted_char += shift
    else
      converted_char -= rotate
    end

    string[i] = converted_char.chr
  end
end

puts "Please enter your message: "
message = gets.chomp
caesar_cipher(message, 5)

puts "Your secret message is: #{message}."
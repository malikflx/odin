# Task
# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

#   > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"
# Quick Tips:

# You will need to remember how to convert a string into a number.
# Don’t forget to wrap from z to a.
# Don’t forget to keep the same case.

# Solution
def caesar_cipher(string)
  shift = 5
  converted_string = string.downcase.bytes.map{|a| a - 96 + shift}
  encrypted_message = converted_string.join
  decrypted_message = Array(encrypted_message)
  new_arr = []
  something = encrypted_message.split('')
  for i in something
    char_code = something[i].ord
    new_arr.push(char_code)
  end
  puts new_arr

  decrypted_message
end

puts caesar_cipher("abcdefg")
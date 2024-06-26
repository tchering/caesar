#-------Here we are modifying original array using bang !----------
def caesar_cipher(string, shift)
  miniscule = ("a".."z").to_a
  magiscule = ("A".."Z").to_a
  array_string = string.split("")

  array_string.map! do |char|
    if miniscule.include?(char)
      miniscule[(miniscule.index(char) + shift) % 26]
    elsif magiscule.include?(char)
      magiscule[(magiscule.index(char) + shift) % 26]
    else
      char
    end
  end

  array_string.join
end

puts caesar_cipher("What a string!", 5)

#-------Here we are Creating new array----------
def caesar_cipher(string, shift)
  miniscule = ("a".."z").to_a
  magiscule = ("A".."Z").to_a
  array_string = string.split("")
  ciphered_array = []

  array_string.map do |char|
    if miniscule.include?(char)
      char_downcase = miniscule[(miniscule.index(char) + shift) % 26]
      ciphered_array.push(char_downcase)
    elsif magiscule.include?(char)
      char_upcase = magiscule[(magiscule.index(char) + shift) % 26]
      ciphered_array.push(char_upcase)
    else
      char
      ciphered_array.push(char)
    end
  end
  ciphered_array.join
end
puts caesar_cipher("What a string!", 5) #Bmfy f xywnsl!

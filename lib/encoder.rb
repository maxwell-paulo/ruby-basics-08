require "morse"

def encode(text)
  # TODO: write a method which returns the morse sentence for the given text
  # NOTE: you may want to extract a `encode_word` method

  array = []
  string = ""

  # Creating an array with all text characters as morse code
  text.each_char do |char|
    if char == " "
      array << "|"
    else
      array << Morse.encode(char)
    end
  end

  # Creating a string with morse code characters and using the | as space
  array.each.with_index do |c, i|
    if array[i - 1] == "|"
      string << c
    else
      string << " " << c
    end
  end

  # Removing space before |
  string.each_char.with_index do |_char, index|
    if string[index + 1] == "|"
      string[index] = ""
    end
  end

  # Revoming space in the index 0 of the string
  string = string.lstrip

  return string
end

puts encode("Hi Guys") # Should return .... ..|--. ..- -.-- ...
puts encode("I Love all of you") # Should return ..|.-.. --- ...- .|.- .-.. .-..|--- ..-.|-.-- --- ..-

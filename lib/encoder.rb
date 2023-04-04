require "morse"

def encode(text)
  # TODO: write a method which returns the morse sentence for the given text
  # NOTE: you may want to extract a `encode_word` method

  array = []
  string = ""

  text.each_char do |char|
    if char == " "
      array << "|"
    else
      array << Morse.encode(char)
    end
  end

  array.each.with_index do |c, i|
    if array[i - 1] == "|"
      string << c
    else
      string << " " << c
    end
  end

  string.each_char.with_index do |_char, index|
    if string[index + 1] == "|"
      string[index] = ""
    end
  end

  string = string.lstrip

  return string
end

puts encode("Hi Guys")
puts encode("I Love all of you")

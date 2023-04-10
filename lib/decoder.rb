require "morse"

def decode(morse_text)
  # TODO: Decode the morse text you just got!
  morse_text.gsub!("|", "  ")
  return Morse.decode(morse_text).upcase
end

puts decode(".... ..|--. ..- -.-- ...") # Should return Hi guys
puts decode("..|.-.. --- ...- .|.- .-.. .-..|--- ..-.|-.-- --- ..-") # Should return I love all of you
puts decode('.-')
puts decode('.... ..')

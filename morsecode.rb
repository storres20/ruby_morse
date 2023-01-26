=begin 
Create a method to decode a Morse code character, takes a string parameter, and return the corresponding character in uppercase (e.g. decode_char(".-") returns "A").
=end

def decode_char(morseletter)
  morse_code = { '.-' => 'A', '-...' => 'B',
                 '-.-.' => 'C', '-..' => 'D',
                 '.' => 'E', '..-.' => 'F',
                 '--.' => 'G', '....' => 'H',
                 '..' => 'I', '.---' => 'J',
                 '-.-' => 'K', '.-..' => 'L',
                 '--' => 'M', '-.' => 'N',
                 '---' => 'O', '.--.' => 'P',
                 '--.-' => 'Q', '.-.' => 'R',
                 '...' => 'S', '-' => 'T',
                 '..-' => 'U', '...-' => 'V',
                 '.--' => 'W', '-..-' => 'X',
                 '-.--' => 'Y', '--..' => 'Z' }

  #morse_code.each do |key, value|
  #  value if key == morseletter
  #end
  morse_code[morseletter]
end

puts decode_char('.-')

=begin 
Create a method to decode an entire word in Morse code, takes a string parameter, and return the string representation. Every character in a word will be separated by a single space (e.g. decode_word("-- -.--") returns "MY").
=end

# decode_word("-- -.--") => "MY"
def decode_word(word)
  space = " " # 01
  newWord = word.split(space).map {|n| decode_char(n)}.join
end

puts decode_word("-- -.--")


=begin 
Create a method to decode the entire message in Morse code, takes a string parameter, and return the string representation. Every word will be separated by 3 spaces (e.g.
=end

# decode_message("-- -.--   -. .- -- .") => "MY NAME"
def decode_message(message)
  space = "   " # 03
  newMessage = message.split(space).map {|n| decode_word(n)}.join(" ")
end

puts decode_message("-- -.--   -. .- -- .")

=begin 
Once your code is ready use it to decode the message from the old bottle:
.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...
=end

# decode_message(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")

puts decode_message(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
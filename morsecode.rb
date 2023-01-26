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

  # morse_code.each do |key, value|
  #  value if key == morseletter
  # end
  morse_code[morseletter]
end

puts decode_char('.-')

# decode_word("-- -.--") => "MY"
def decode_word(word)
  space = ' ' # 01
  word.split(space).map { |n| decode_char(n) }.join
end

puts decode_word('-- -.--')

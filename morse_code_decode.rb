class MorseDecoder
  MORSE_DICT = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', '-----' => '0', '.----' => '1', '..---' => '2', '...--' => '3',
    '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8',
    '----.' => '9'
  }.freeze

  def self.decode_char(morse_char)
    MORSE_DICT[morse_char] || ''
  end

  def self.decode_word(morse_word)
    morse_word.split.map { |char| decode_char(char) }.join
  end

  def self.decode_message(morse_message)
    morse_message.split('   ').map { |word| decode_word(word) }.join(' ')
  end
end

# Example usage:
morse_message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = MorseDecoder.decode_message(morse_message)
puts decoded_message

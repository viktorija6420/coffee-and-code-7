#1 figure out if a letter is a vowel
def vowel(char)
  # ["a", "e", "i", "o", "u"].include?(char)
  %w( a e i o u ).include?(char)
end
#2 find the first vowel
def find_first_vowel
  word.chars.each_with_index{ |c, i|}       #gives the position and the vowel. We need the position or the index.
  return i if is_vowel(c)}
end
#3 translate a word into Pig Language
#--find the position of the first vowel
#--get the first part of the string
#--get the second part of the string
#--move the first part to the end
#--add 'ay' to the end
def translate_word(word)
  position = find_first_vowel(word)
  new_word = if position == 0
    word
  else
    front = word[0..position -1]
    back  = word[position..-1]
    back + front
end
return new_word + 'ay'
#4 translate a sentence into Pig Language
def translate_sentence
  #HINT: use the map method
  translate_word(sentence)
end



# apple => appleay
# banana => ananabay
# strawberry => awberrystray
# quiet => uietqay
# eat pie => eatay iepay
puts translate_sentence('apple')
puts translate_sentence('banana')

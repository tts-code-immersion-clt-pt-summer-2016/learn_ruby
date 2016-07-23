def translate_one_word(w)
  vowels = ["a", "e", "i", "o", "u"]
  first_vowel_to_end = w[/[aeiou](.){1,}/]
  if first_vowel_to_end == w
    return "#{w}ay"
  elsif w[0..1] == "qu"
    first_chars = "qu"
    first_vowel_to_end = first_vowel_to_end[1..-1]
    return "#{first_vowel_to_end}#{first_chars}ay"
  else
    i = w.index(first_vowel_to_end)
    first_chars = w[0..(i-1)]
    return "#{first_vowel_to_end}#{first_chars}ay"
  end
end

def translate(s)
  piggish_array = s.downcase.split(' ').map do |i|
    translate_one_word(i)
  end
  return piggish_array.join(' ')
end

def translate_one_word(w)
  vowels = ["a", "e", "i", "o", "u"]
  first_vowel_to_end = w[/[aeiou](.)*/]
  if first_vowel_to_end == w
    return "#{w}ay"
  else
    i = w.index(first_vowel_to_end)
    first_chars = w[0..(i-1)]
    if first_chars[-1] == "q" && first_vowel_to_end[0] == "u"
      first_chars += first_vowel_to_end[0]
      first_vowel_to_end = first_vowel_to_end[1..-1]
    end
    return "#{first_vowel_to_end}#{first_chars}ay"
  end
end

def translate(s)
  s = s.downcase.split(' ')
  piggish_array = s.map do |i|
    translate_one_word(i)
  end
  return piggish_array.join(' ')
end

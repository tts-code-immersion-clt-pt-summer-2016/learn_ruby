def echo(s)
  return s
end

def shout(s)
  return s.upcase
end

def repeat(s, i = 2)
  return ("#{s} " * i).strip
end

def start_of_word(s, i)
  return s[0,i]
end

def first_word(s)
  return s.split(' ')[0]
end

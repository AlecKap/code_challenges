def is_anagram(s, t)
  t = t.split('').sort
  s = s.split('').sort

  if t == s
    true
  else
    false
  end
end
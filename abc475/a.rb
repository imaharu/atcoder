S = gets.chomp.chars

size = S.length

S.each_with_index do |s, index|
  if index + 1 == size
    print s
  else
    print s + "o"
  end
end

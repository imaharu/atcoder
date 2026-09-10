x = gets.to_i

2.times do |index|
  if (index + 1) != x
    puts index + 1
    break
  end
end
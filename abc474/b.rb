n = gets.to_i
ps = gets.split.map(&:to_i)

missExited = false

ps.each_with_index do |p, i|
  exitIndex = (p - 1) / 10
  currentIndex = i / 10

  if exitIndex != currentIndex
    missExited = true
    break
  end
end

if missExited == true
  puts "No"
else
  puts "Yes"
end
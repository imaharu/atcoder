N, K = gets.split.map(&:to_i)
lightCount = 0

lights = gets.chomp.chars.map(&:to_i)

lights.each do |light|
  lightCount += 1 if light == 1
end

if (K % 2 == 0 && lightCount % 2 == 0) || (K % 2 == 1 && lightCount % 2 == 1)
  puts "Yes"
else
  puts "No"
end
N = gets.to_i
inputs = gets.chars

results = false

(N - 2).times.with_index(0) do |index|
  if inputs[index..index+2].uniq.count == 1
    results = true
    break
  end
end

if results
  puts "Yes"
else
  puts "No"
end

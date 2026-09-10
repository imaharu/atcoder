N, K = gets.split.map(&:to_i)

if K >= 2 * N - 2 && K % 2 == 0
  puts "Yes"
else
  puts "No"
end
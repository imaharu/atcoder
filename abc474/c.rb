n, q = gets.split.map(&:to_i)
ps = gets.split.map(&:to_i)

ordered = Array.new(n)
ps.each_with_index do |p, i|
  ordered[p - 1] = i + 1
end

autoIncrementIndex = n

q.times do
  query = gets.to_i
  autoIncrementIndex += 1
  ordered[query - 1] = autoIncrementIndex
end




result = ordered.each_index.sort_by { |i| ordered[i] }.map { |i| i + 1 }
puts result.join(" ")
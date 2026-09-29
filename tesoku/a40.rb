N = gets.to_i
as = gets.split.map(&:to_i)

creatable_triangles = as.tally.sum do |_, count|
  count >= 3 ? count * (count - 1) * (count - 2) / 6 : 0
end

puts creatable_triangles
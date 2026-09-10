q = gets.to_i
map = {}
q.times do
  query, name, score = gets.split
  case query.to_i
  when 1
    map[name] = score
  when 2
    puts map[name]
  end
end

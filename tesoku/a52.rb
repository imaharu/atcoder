q = gets.to_i
queue = []
q.times do
  query, text = gets.split
  case query.to_i
  when 1
    queue.append(text)
  when 2
    puts queue.first
  when 3
    queue.shift
  end
end

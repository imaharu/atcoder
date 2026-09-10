q = gets.to_i
stack = []
q.times do
  query, text = gets.split
  case query.to_i
  when 1
    stack.push(text)
  when 2
    puts stack.last
  when 3
    stack.pop
  end
end

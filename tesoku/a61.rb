vNum, eNum = gets.split.map(&:to_i)
adjacentVertices = Array.new(vNum) {[]}

eNum.times do
  vertice, edge = gets.split.map(&:to_i)
  adjacentVertices[vertice - 1].push(edge)
  adjacentVertices[edge - 1].push(vertice)
end

adjacentVertices.each_with_index do |vertices, index|
  puts "#{index + 1}: {#{vertices.join(', ')}}"
end

vNum, eNum = gets.split.map(&:to_i)
adjacentVertices = Array.new(vNum) {[]}

eNum.times do
  vertice, edge = gets.split.map(&:to_i)
  adjacentVertices[vertice - 1].push(edge)
  adjacentVertices[edge - 1].push(vertice)
end

marked = Array.new(vNum, false)
marked[0] = true
stack = [0]
cacheIndexs = Array.new(vNum, )

loop do
  if stack.empty?
    break
  end

  edge = stack.last

  adjacentVertices[edge].each do |nextEdge|
    unless marked[nextEdge - 1]
      marked[nextEdge - 1] = true
      stack.push(nextEdge - 1)

      break
    end
  end

  stack.pop if stack.last == edge
end

if marked.all?
  puts "The graph is connected."
else
  puts "The graph is not connected."
end

# https://atcoder.jp/contests/abc103/tasks/abc103_d

N, M = gets.split.map(&:to_i)

demands = []

destroyedBridges = 0
currentPosition = 0

M.times do
  a, b = gets.split.map(&:to_i)
  demands << { start: a, end: b}
end

demands.sort_by {| d| d[:end] }.each do |demand|
  if demand[:start] >= currentPosition
    destroyedBridges += 1
    currentPosition = demand[:end]
  end
end

puts destroyedBridges
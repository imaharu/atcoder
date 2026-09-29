A, B = gets.split.map(&:to_i)

if A > B
  bigger = A
  smaller = B
else
  bigger = B
  smaller = A
end

loop do
  nextSmaller = bigger % smaller
  if smaller % nextSmaller == 0
    puts nextSmaller
    break
  end

  bigger = smaller
  smaller = nextSmaller
end
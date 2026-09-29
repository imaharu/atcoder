N, S, L = gets.split.map(&:to_i)

as = gets.split.map(&:to_i)

accumulatedCosts = Array.new(N,  Array.new(as.length, 0))

N.times.with_index do |index|
  accumulatedCosts[index] = as
end
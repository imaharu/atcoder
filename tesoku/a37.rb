N, M, K = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)

sum = (M * N * K) + (as.sum * M) + (bs.sum * N)
puts sum
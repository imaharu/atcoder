N = gets.to_i
as = gets.split.map(&:to_i)

coins = [0, 0, 0]

as.each do |cost|
  rest = (1000 - cost % 1000) % 1000
  digits = rest.to_s.rjust(3, '0').chars.map(&:to_i)
  coins[0] += digits[0]
  coins[1] += digits[1]
  coins[2] += digits[2]
end

puts coins.reverse.join(" ")
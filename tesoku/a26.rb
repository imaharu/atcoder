def prime?(n)
  return false if n < 2

  (2..Integer.sqrt(n)).each do |i|
    return false if n % i == 0
  end

  true
end

q = gets.to_i
xs = Array.new(q) { gets.to_i }

xs.each do |x|
  puts prime?(x) ? "Yes" : "No"
end

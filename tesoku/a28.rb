N = gets.to_i

operates = Array.new(N) { gets.split }

n = 0

operates.each do |operate|
  case operate[0]
  when "+"
    n = (n + operate[1].to_i) % 10000
  when "-"
    n =  (n - operate[1].to_i) % 10000
  when "*"
    n = (n * operate[1].to_i) % 10000
  end
  puts n
end

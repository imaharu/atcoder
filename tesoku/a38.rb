D, N = gets.split.map(&:to_i)

maxWorkingHours = Array.new(D, 24)

N.times do 
  l, r, h = gets.split.map(&:to_i)
  maxWorkingHours[l-1..r-1] = maxWorkingHours[l-1..r-1].map { |x| [x, h].min }
end

puts maxWorkingHours.sum

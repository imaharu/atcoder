n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
minArray = [0, a[0]]

(n -2).times do |index|
  direct = minArray[index + 1] + a[index + 1]
  jump = minArray[index] + b[index]
  min = [direct, jump].min
  minArray.push(min)
end

lastStep = false

currentIndex = n - 1
roads = [n - 1]
loop do
  direct = minArray[currentIndex - 1] + a[currentIndex - 1]
  jump = minArray[currentIndex - 2] + b[currentIndex - 2]
  if direct <= jump
    roads.push(currentIndex - 1)
    currentIndex -= 1
  else
    roads.push(currentIndex - 2)
    currentIndex -= 2
  end
  lastStep = true if currentIndex == 0
  if lastStep
    break
  end
end

puts roads.length
puts roads.map{|road| road + 1}.reverse.join(' ')
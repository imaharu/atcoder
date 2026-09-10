targetSum  = gets.split.map(&:to_i).last
cards = gets.split.map(&:to_i)

paintedNumbers = Array.new(targetSum + 1, false)
paintedNumbers[0] = true

cards.each do |card|
  tmpPaintedNumbers = paintedNumbers.dup
  paintedNumbers.each_with_index do |pn, index|
    if pn == true && (index + card <= targetSum)
      tmpPaintedNumbers[index + card] = true
    end
  end
  paintedNumbers = tmpPaintedNumbers
end

if paintedNumbers[targetSum]
  puts "Yes"
else
  puts "No"
end

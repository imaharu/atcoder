inputs  = gets.split.map(&:to_i)
n = inputs[0]
maxWeight = inputs[1]

treasures = []
n.times do
  inputs = gets.split.map(&:to_i)
  treasures << { w: inputs[0], v: inputs[1] }
end

dp = Array.new(maxWeight + 1, nil)
dp[0] = 0

treasures.each do |treasure|
  w = treasure[:w]
  v = treasure[:v]
  tmp = dp.dup
  dp.each_with_index do |dpv, dpw|
    next if dpv.nil?
    next if w + dpw > maxWeight # 容量制限
    if tmp[w + dpw].nil? || tmp[w + dpw] < dpv + v
      tmp[w + dpw] = dpv + v
    end
  end

  dp = tmp
end

puts dp.compact.max
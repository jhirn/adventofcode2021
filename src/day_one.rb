0.tap do |acc|
  File.new('input/day_one.txt').each_cons(2) do |(current, following)|
    acc += 1 if current.to_i < following.to_i
  end
  puts acc
end

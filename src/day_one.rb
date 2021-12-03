require 'ap'

0.tap do |acc|
  File.new('input/day_one.txt').each_cons(2) do |(current, following)|
    acc += 1 if current.to_i < following.to_i
  end
  #  puts acc
end

[0, 0].tap do |acc, previous|
  File.new('input/day_one2.txt').each_cons(3) do |window|
    size = window.map(&:to_i).sum
    acc += 1 if previous < size && !previous.zero?
    previous = size
  end
  puts acc
end

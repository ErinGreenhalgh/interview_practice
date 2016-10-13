num_list = [9, 1, -2, 6, 10, -5, -3, -1, -4, 8, 4, 5, 7, 0, 3, 2]

highest = num_list.max
lowest = num_list.min

sum = 0
num_list.each { |a| sum+=a }
average = sum / num_list.count.to_f

puts(highest, lowest, sum, num_list.count, average)

# now calculate max/min/avg only
min = 0
max = 0
sum = 0
avg = 0
count = 0
num_list.each do |num|
  if num <= min
    min = num
  end
  if num >= max
    max = num
  end
  sum = num + sum
  count += 1
  avg = sum / count.to_f
end

puts(max, min, sum, count, avg)

# iterating over num_list one time

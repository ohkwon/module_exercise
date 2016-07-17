names = []

7.times do
  puts "Please put in a student's first name:"
  names << gets.chomp
end

class_size = names.length

group = []

index_1 = 0
index_2 = 0

if class_size.even?

  (class_size/2).times do
    group[index_1] = []
    group[index_1] << names[index_2]
    index_2 += 1
    group[index_1] << names[index_2]
    index_2 += 1
    index_1 += 1
  end

  group.each do |small|
    puts "Group: #{small[index].capitalize} #{small[index + 1].capitalize}"
  end

else

  (class_size / 2 - 1).times do
    group[index_1] = []
    group[index_1] << names[index_2]
    index_2 += 1
    group[index_1] << names[index_2]
    index_2 += 1
    index_1 += 1
    p group
    puts index_2
  end

  group[index_1] = []

  3.times do
    group[index_1] << names[index_2]
    index_2 += 1
    p group
    puts index_2
  end

  index = 0
  index_1 = 0

  (group.length - 1).times do
    puts "Group: #{group[index][0].capitalize} #{group[index][1].capitalize}"
    index += 1
  end

  index = group.length - 1

  puts "Group: #{group[index][0].capitalize} #{group[index][1].capitalize} #{group[index][2].capitalize}"

end


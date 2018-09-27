require './test'

item = 'yes'
non_item = 'no'
item_num = 1
non_item_num = 2

myTest = Test.new
puts myTest.compare('yes', item)
puts myTest.compare('yes', non_item)

puts myTest.compare(1, item_num)
puts myTest.compare(1, non_item_num)
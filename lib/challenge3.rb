require 'json'
require 'pry'

file = File.read('../data/grades.json')
grades_hash = JSON.parse(file)

comparison_hash = {}

grades_hash.each_pair do |key, value|
  comparison_array = []
  i = 0
  j = 1

  value.each do |score|
    if score[i] > score[j]
      comparison_array.push(:down)
    elsif value[i] < value[j]
      comparison_array.push(:up)
    else
      comparison_array.push(:even)
    end
  end


  result = ""
  if comparison_array.include?(:up)
    result = "Not in decline"
  elsif comparison_array.count(:down) < 3
    result = "Not in decline"
  else
    result = "In decline"
  end
  puts result >> []

end



#put results from if statement into an array.
#loop through array, count number in decline.
#count number not in decline.

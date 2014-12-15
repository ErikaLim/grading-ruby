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

    # puts key + comparison_array.inspect
  end

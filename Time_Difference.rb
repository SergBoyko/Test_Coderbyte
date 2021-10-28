#Have the function TimeDifference(strArr) read the array of string stored in strArr which will be an unscored list of
# times in twelve-hour format like so HH:MM(am/pm). Your goal is to determine the smallest difference in minutes between
# two of the times in the list. For example: if strArr is ['2:10pm', '1:30pm', '10:30am', '4:42pm'] then your program
# should return 40 because the smallest difference is between 1:30pm and 2:10pm with a difference of 40 minutes.
# The inpit array will alsways contain at least two elements and all of the elements will be in the correct format and unique.
#
#
# input ['1:10pm', '4:40am', '5:00pm']
# output 230
#
# Input ['10:00am', '11:45pm', '5:00am', '12:01am']
# output 16
#
#
# input ['2:10pm', '1:30pm', '10:30am', '4:42pm']
# output 40

require 'time'

def TimeDifference(arr)
  parse_arr = []
  arr.each do |time|
    parse_arr.push(Time.parse(time))
  end
  diff_between_arr = parse_arr.combination(2).min_by { |a, b| (a - b).abs }
  min_diff = ((diff_between_arr[0] - diff_between_arr[1]) / 60).abs.round
  return min_diff
end

puts TimeDifference(['2:10pm', '1:30pm', '10:30am', '4:42pm'])


#Palindrome Swapper

# Have the function PalindromeSwapper(str) take the str parameter being passed and determine if a palindrome can be
# created by swapping two adjacent characters in the string. If it is possible to create a palindrome, then your program
# should return the palindrome, if not then return the string -1. The input string will only contain alphabetic characters.
# For example: if str is 'rcaecar' then you can create a palindrome by swapping the second and third characters,
# so you program should return the string racecar which if the final palindromic string.
#
# Examamples
# Input 'anna'
# Output 'anna'
#
# input 'kyaak'
# Output 'kayak'
#


str = 'kyaak' # kayak
str1 = 'anna'
str2 = 'rcaecar' # rcaecar
str3 = 'hello'


def PalindromeSwapper(str)
  if str == str.reverse
    str
  else
    (0...str.size - 1).map do |i|
      s = str.dup
      s[i], s[i + 1] = s[i + 1], s[i]
      if s.reverse == s
        return s
      end
    end
    return '-1'
  end
end
puts PalindromeSwapper(str)


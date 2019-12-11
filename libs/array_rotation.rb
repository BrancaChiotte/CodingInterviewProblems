# Complete the body of the function shown below
# The input of the rotate function accepts two arguments:
#   a: A array with integers of size between 1 and 10,000
#   k: a constant between 0 and 2^31
#
# The function should rotate the contents of the array to the right k times
# and return the rotated result
#
# Examples:
# a = [1,2,3,4,5], k = 1, result = [5,1,2,3,4]
# a = [1,2,3,4,5], k = 0, result = [1,2,3,4,5]
# a = [1,2,3,4,5], k = 3, result = [3,4,5,1,2]
# a = [1,2,3,4,5], k = 5, result = [1,2,3,4,5]
# a = [1,2,3,4,5], k = 6, result = [5,1,2,3,4]
#
# Restriction runtime: O(n), memory: O(n) where n is the size of the array

class ArrayRotation

  # @param {Array} a
  # @param {Integer} k
  # @return {Array}
  def rotate(a, k)
    solution = []
    r_index = k % a.length
    a.each_with_index do |_, i|
      i - r_index >= 0 ? solution[i] = a[i - r_index] : solution[i] = a[a.length - r_index - i]
    end
    solution
  end
end

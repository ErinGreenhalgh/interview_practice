# flatten array without using flatten method
#a = [[1,2],[3,[4,5]]] => a = [ 1, 2, 3, 4]
array = [[1,2],[3,[4,5]]]

def flatten(a, result=[])
  # result = []
  a.map do |item|
    if item.is_a?(Array)
      # result += flatten(item, result)
      flatten(item, result)
    else
      result << item
    end
  end
  result
end

puts flatten(array).inspect

# be explicit with naming
# if you're storing the value to a result, don't need to map
# liked how I walked through the if / else with the comment
# when talking about the big picture, be as explicit as
      # you you give the
# don't be afraid to ask questions
# with recursion, make sure that when you pass back me through, you
      # are accounting for the change in value


# Extensions:
# try writing a flatten method to call on Array, redefining the inheritance
# try finding an iterative solution 

#### Instructions ####
# Write a function fib() that a takes an integer nn and returns the nnth fibonacci number.
# Let's say our fibonacci series is 0-indexed and starts with 0.
# eg:
# fib(0) => 0
# fib(1) => 1
# fib(2) => 1
# fib(3) => 2
# fib(4) => 3
#-----------------------------------------------------------------#

#Fibonacci sequence:
#     a sequence in which each number is the sum of the two proceeding numbers
nums    = [0, 1, 1, 2, 3, 5, 8, 13]
indexes = [0, 1, 2, 3, 4, 5, 6, 7]
#------------------------------------------------------------------------

# Thoughts for solving
#1) We know the sequence (in order to check our work),
  # but we don't have access to the sequence within the method
#2) We know the starting point of the sequence, possible to use this to keep track:
starting_num = 0
starting_index = 0

#-------------------------------------------------------------------------

#Recursive solution:
def fib_recursive(index)
  if index == 0 || index == 1
    return index
  end
  return fib(index - 1 ) + fib(index - 2)
end

#-------------------------------------------------------------------------

#Iterative solution:
def fib_iterative(index)
  #we'll build the sequence every time we need to find the number
  #keep track of the current number, the previous number, and the one before that every time
  #we don't actually care about the starting number
  if index == 0 || index == 1
    return index
  end

  second_preceeding = 0
  preceeding        = 1
  #we know this is 1 because of the Fib sequence
  current           = 0
  #initialize the current
  (index - 1).times do
    current = preceeding + second_preceeding
    #current is the sum of the two nums preceeding it
    second_preceeding = preceeding
    preceeding = current
    #reset the preceeding and second preceeding for the next pass
  end
  return current
end


#for the iterative solution, we need to keep track of what our index is and our number

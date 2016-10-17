#limited number of types of cake,
#unlimited suppy of each type
# each type of cake has a weight (kg) and montary value (pounds) stored in an array with 2 indices
# [ 7, 160 ] => any non-negative int, so could be zero
# create a function that takes an array of cake type arrays and weight capacity of the duffel bag
# and return maximum monetary value that the duffel bag can hold

def max_duffel_bag_value(cake_types, max_weight)
  cake_types.map do |type|
    #check if the max_weight is evenly divisible by the
    if max_weight % type[0] === 0
      value = (max_weight / type[0]) * type[1]
    else
      # if not, find the number of times that the
      #max_weight is evenly divisible by the type's weight
      # and calculate a value that we will add to 
      remainder = max_weight / type[0]
      value = remainder * type[1]
    end

    if cake_types.count > 1 && remainder != nil
      other_types = cake_types.find_all do |typ|
        typ != type
      end


      #for the other types of cake,
      #check if the remainder is divisible by each weight
      # if it is divide it by the weight and multiply by the value
      #add this number to the value
      #***this doesn't take into account situations where it is not evenly divisible
      #but where we could still add to the weight value***
      options = other_types.map do |cake_type|
        if remainder % cake_type[0] == 0
          value = value + (remainder/type[0]) * type[1]
        end
      end
    end
    value
  end.max
end

##### next steps: #####
# try a recursive strategy:
# for each weight, we want to check if the max_weight is evenly divisible by it
# if not, we want to check if the remainder is evenly divisible by the enxt numbers

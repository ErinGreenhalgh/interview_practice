my_string = "My favorite color in the whole world is red"

# reverse each word in the string without changing the order of the words from the original string
# effectively turning this string into:
# "yM etirovaf roloc ni eht elohw dlrow si der"

strings = my_string.split(" ")
reversed_strings = strings.map do |string|
  string.reverse
end


puts reversed_strings.join(" ")

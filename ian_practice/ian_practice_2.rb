# transform this:
name_list = ['bob', 'susan', 'james', 'susan', 'james', 'susan']

# into this
expected_result = { 'bob' => 1,  'susan' => 3, 'james' => 2 }

name_hash = {}
result = name_list.map do |name|
  
  name_hash.name => frequency
end

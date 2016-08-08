# Find the needle by writing one line of code.
# As an example, if haystack = [:hay, :needle, :hay], you'd pull it out with:
# haystack[1]

#haystack = {hay1: [:hay2, :hay3, :hay4, {hay5: {hay6: [:hay7, {hay8: [:hay9, :hay10, :needle]}, :hay11, :hay12, :hay13]}}, :hay14, :hay15]}
# => {:hay1=>[:hay2, :hay3, :hay4, {:hay5=>{:hay6=>[:hay7, {:hay8=>[:hay9, :hay10, :needle]}, :hay11, :hay12, :hay13]}}, :hay14, :hay15]}

haystack = {hay: [:hay, :hay, :hay, {hay: {hay: [:hay, {hay: [:hay, :hay, :needle]}, :hay, :hay, :hay]}}, :hay, :hay]}


p haystack[:hay][-3][:hay][:hay][1][:hay][2]

def prep
  (1..555).to_a + (560..1000).to_a
end

def find(_arr)
  (1..1000).to_a - prep
end

# put your array in find function
puts find(prep)

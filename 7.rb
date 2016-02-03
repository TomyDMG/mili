# dumb solution  `foo & bar`

def prep(n)
  (1..n).to_a
end

def list_union(*args)
  result = {}
  args.each do |list|
    list.each { |i| result[i] = nil }
  end
  result.keys
end

# not for 2 lists ;)
# k-numler of lists. complex k*n, in this case 2n

puts list_union(prep(5), prep(10), prep(33))

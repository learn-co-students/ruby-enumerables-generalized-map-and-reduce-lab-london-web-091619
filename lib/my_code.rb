def map(dune)
  dune.map {|e| e*2}
end

def generalized_reduce(source_array, starting value=10)
  source_array.reduce(starting_value) {|sum, n| sum + n}
end

  
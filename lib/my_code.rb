def map(array)
  arr = []
  i = 0
  while i < array.length
    arr.push(yield array[i])
    i += 1
  end
  arr
end

def reduce(array, counter = 0)
  if counter > 0
    starting_point = counter
    i = 0
  else
    starting_point = array[0]
    i = 1
  end
  
  while i < array.length
    starting_point = yield(starting_point, array[i])
    i += 1
  end
  starting_point
end
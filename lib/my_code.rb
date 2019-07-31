def map(arr)
  i = 0
  result = []
  while i < arr.length
    result << yield(arr[i])
    i += 1
  end

  result
end

def reduce(arr, initial = nil)
  if initial
    result = initial
    i = 0
  else
    result = arr.first
    i = 1
  end
  
  while i < arr.length
    result = yield([result, arr[i]])
    i += 1
  end
  
  result
end
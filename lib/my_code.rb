# Your Code Here
def map(arr, &block)
  arr.map(&block)
end
  
def reduce(array, start_point = nil, &block)
  if start_point.nil?
    array.reduce(&block)
  else
    array.reduce(start_point, &block)
  end
end
  
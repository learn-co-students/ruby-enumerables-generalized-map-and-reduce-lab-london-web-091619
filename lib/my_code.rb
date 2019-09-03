# Your Code Here
def map(array)
i=0
newarr = []
while i < array.length
newarr[i] = yield(array[i])
i+=1
end
 newarr
end

def reduce(array, starting_point=nil)
  i=0
  if starting_point
    val = starting_point
  else
    val = array[0]
    i=1
  end
while i<array.length
  val = yield(val, array[i])
i+=1
end
val
end

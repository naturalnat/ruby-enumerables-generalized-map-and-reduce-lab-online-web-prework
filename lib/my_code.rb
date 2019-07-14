# Your Code Here
def map(source_array)
  new = []
  i = 0
  while i < source_array.length
    new.push((yield(source_array[i]))
    i += 1
  end
  new
end

def reduce(source_array, starting_point)
  if starting_point
    reduce = starting_point
    i = 0
  else
    reduce = source_array[0]
    i = 1
  end

  while i < source_array.length
    reduce = yield(reduce, source_array[i])
    i += 1
  end
  reduce
end

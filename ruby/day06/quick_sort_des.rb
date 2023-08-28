def descending(arr)
  return arr if arr.length <= 1

  pivot = arr.pop

  bigger = []
  smaller = []

  arr.each do |element|
    if element < pivot
      smaller << element
    else
      bigger << element
    end
  end

  sort_smaller = descending(smaller)
  sort_bigger = descending(bigger)

  sort_bigger + [pivot] + sort_smaller
end

array = [4, 1, 7, -2, 100, 25, 200, 43, -12]
print descending(array)

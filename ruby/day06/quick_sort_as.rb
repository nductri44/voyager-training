def ascending(arr)
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

  sort_smaller = ascending(smaller)
  sort_bigger = ascending(bigger)

  sort_smaller + [pivot] + sort_bigger
end

array = [4, 1, 7, -2, 100, 25, 200, 43, -12]
print ascending(array)

to_sort = [4, 2, 0, 3, 1]
i = 0

class Array
  def swap!(a, b)
    self[a], self [b] = self[b], self[a]
    self
  end
end

class BubbleSort
  def sort(sort)
    length = sort.length
    swapped = true
    while swapped
      swapped = false
      (length - 1).times do |swap|
        if sort[swap] > sort[swap + 1]
          sort.swap!(swap, (swap + 1))
          swapped = true
        end
      end 
    end
    puts sort
  end
end

sorter = BubbleSort.new
sorter.sort(["d", "b", "a", "c"])
puts ""
thing = Array.new(10) { rand(1...10)}
sorter.sort(thing)

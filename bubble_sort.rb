to_sort = [4, 2, 0, 3, 1]

class Array
  def swap!(a, b)
    self[a], self [b] = self[b], self[a]
    self
  end
end

class BubbleSort
  def sort(collection)
    length = collection.length
    swapped = false
    while swapped == false
      swapped = true
      (length - 1).times do |swap|
        if collection[swap] > collection[swap + 1]
          collection.swap!(swap, (swap + 1))
          swapped = false
        end
      end 
    end
    puts collection
  end
end

sorter = BubbleSort.new
sorter.sort(["d", "b", "a", "c"])
puts ""
thing = Array.new(10) { rand(1...10)}
sorter.sort(thing)

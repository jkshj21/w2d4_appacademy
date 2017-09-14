

def sluggish_oct(fishes) #bubble sort (n^2) running time
  i = fishes.length - 1
  until i <= 0
    j = 0
    until j == i
      if fishes[j].length > fishes[j+1].length && j+1 < fishes.length - 1
      fishes[j], fishes[j+1]= fishes[j+1], fishes[j]
      end
      j+=1
    end
    i-=1
  end
  fishes
end

def dominant_oct(fishes) #merge sort (nlog n) running time

  return [fishes.last] if fishes.count == 1

  mid = fishes.length / 2

  left = merge_sort(fishes.take(mid))
  right = merge_sort(fishes.drop(mid))

  merge_them(left,right)

end

def merge_them(left, right)
  orderly_merged = []
  until left.empty? || right.empty?
    element = left.first.length < right.first.length ? left.shift : right.shift
    orderly_merged << element
  end

  orderly_merged + left + right
end

def clever_oct(fishes) # Takes the longest fish in (n) running time
  longest_fish = 0
  i = 0
  fishes.each_with_index do |fish,index|
    if longest_fish < (fish.length)
      longest_fish = fish.length
      i = index
    end
  end
  fishes[i]
end

class DancingOct



  def slow_dance(direction, tiles)
    return nil if !tiles.kind_of?(Array)
    tiles.each_with_index do |dir, index|
      if dir == direction
        return index
      end
    end
    nil
  end

  def constant_dance(direction, tiles)
    return nil if !tiles.kind_of?(Hash)
    tiles[direction]
  end
end

# linear octopus dance
# tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]


def slow_dance(move, arr)
  arr.each_with_index do |dir,i|
    return i if move == dir
  end

end


def quick_dance(move, hash)
  hash[move]

end

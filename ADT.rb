Exercise 1 - Stack
# Let's write a Stack class. To do this, use the following framework:
#
#   class Stack
#     def initialize
#       # create ivar to store stack here!
#     end
#
#     def add(el)
#       # adds an element to the stack
#     end
#
#     def remove
#       # removes one element from the stack
#     end
#
#     def show
#       # return a copy of the stack
#     end
#   end
# To test that your code works, create a new instance of the Stack class, and play around with adding and removing elements. Remember, a stack follows the principle of LIFO!
class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end

end




# Exercise 2 - Queue
# Now let's write a Queue class. We will need the following instance methods: enqueue(el), dequeue, and show.
#
# Test your code to ensure it follows the principle of FIFO.

def Queue
  def initialize
    @q = []
  end

  def enqueue(el)
    @q.push(el)
  end

  def dequeue
    @q.shift
  end

  def show
    @q.dup
  end
end

# Exercise 3 - Map
# As you saw in the videos for tonight, a map can be implemented using a 2D array. Let's write a Map class (following a similar pattern to Stack and Queue) that implements a map using only arrays.
#
# Remember, a map stores information in key-value pairs, where the keys are always unique. When implemented with arrays, a map might look something like this: my_map = [[k1, v1], [k2, v2], [k3, v2], ...].
#
# Our Map class should have the following instance methods: assign(key, value), lookup(key), remove(key), show. Note that the assign method can be used to either create a new key-value pair or update the value for a pre-existing key. It's up to you to check whether a key currently exists!
#
# As always, test your code thoroughly to make sure all properties of maps are enforced.
class Map
  def initialize
    @map = []
  end

  def assign(key,value)
    key_pos = @map.index{|pair| pair[0] == key}
    if key_pos
      @map[key_pos][1] = value
    else
      @map <<[key,value]
    end
  end

  def lookup(key)
    @map.each do |pair|
      return pair[1] if pair[0] == key
    end
  end

  def remove(key)
    @map.each do |pair|
      delete pair if pair.include?(key)
    end
  end

  def show
    deep_dup(@map)
  end

  private
    deep_dup(arr)
      duplicate = []
      arr.each do |ele|
        if ele.is_a? (Array)
          duplicate << deep_dup(ele)
        else
          duplicate << ele
        end
      end
      duplicate
    end

end

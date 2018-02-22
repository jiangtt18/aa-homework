# A Very Hungry Octopus wants to eat the longest fish in an array of fish.
#
# ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"
# Find the longest fish in O(n^2) time. Do this by comparing all fish lengths to all other fish lengths

  def find_longest_fish_n_sqr(arr)
    arr.each_with_index do |fish1, i1|
        max_length = true

        arr.each_with_index do |fish2, i2|
          next if i1 == i2
          max_length = false if fish2.length > fish1.length
        end
        return fish1 if max_length
      end
  end

  def find_longest_fish_n(arr)
    str = arr[0]
    longest = str.length
    arr.each do |fish|
      len = fish.length
      str = fish if len > longest
    end
    str
  end

  def find_longest_fish_n_log_n(arr)
    arr.sort_by{|fish| fish.length}.last
  end


fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

p find_longest_fish_n_log_n(fish)

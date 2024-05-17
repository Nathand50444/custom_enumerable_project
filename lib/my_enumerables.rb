module Enumerable
  # Your code goes here
  def my_each
    return enum_for(:my_each) unless block_given?

    for i in 0...self.length
      yield(self[i])
    end

    self
  end

  def my_each_with_index
    return enum_for(:my_each_with_index) unless block_given?

    for i in 0...self.length
      yield(self[i], i)
    end

    self
  end

  def my_map
    return enum_for(:my_map) unless block_given?

    result = []
    self.my_each do |elem|
      result << yield(elem)
    end

    result
  end



end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each
    for i in self
      yield(i)
    end
  end
end
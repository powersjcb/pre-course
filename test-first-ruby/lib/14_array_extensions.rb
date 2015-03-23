class Array

  # New array methods
  def sum
    self == [] ? 0 : self.inject{|sum,value| sum+=value}
  end

  def square
    self == [] ? self : self.map! {|value| value**2 }
  end

  def square!
    self.square
  end

end



# puts [1,3,45].sum
# puts [].sum

a = [1,2,3,4,5]
puts a
a.square!
puts a
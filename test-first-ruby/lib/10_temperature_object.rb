class Temperature
  attr_accessor :c, :f, :from_fahrenheit


  def initialize(options={})
    @c = options[:c]
    @f = options[:f]
  end

  def in_fahrenheit
    @f.nil? ? self.class.ctof(@c) : @f
  end

  def in_celsius
    @c.nil? ? self.class.ftoc(@f) : @c
  end


  def self.from_fahrenheit(deg_f)
    self.new(:f=>deg_f)
  end

  def self.from_celsius(deg_c)
    self.new(:c=>deg_c)
  end


  def self.ftoc(temp)
    (temp-32.0)*5/9
  end

  def self.ctof(temp)
    (temp*9.0/5+32)
  end
end

class Celsius < Temperature
  def initialize(deg_c)
    @c = deg_c
  end
end

class Fahrenheit < Temperature
  def initialize(deg_f)
    @f = deg_f
  end
end

# puts Celsius.new(50).in_fahrenheit



# temp = Temperature.new(:c => 100)
# puts temp.in_fahrenheit


# puts temp.in_fahrenheit
# puts temp.ftoc(100)
# puts temp.in_celsius

# puts Temperature.from_fahrenheit(50).in_celsius

class RPNCalculator
  attr_accessor :inputs

  def initialize
    @inputs = []
  end

  # def inputs
  #   @inputs
  # end

  def push(value)
    @inputs.push(value)
  end

  #returns top of the stack
  def value
    @inputs.last
  end

  # define operators
  # pop two, return sum
  def plus
    error_msg
    @inputs.push( @inputs.pop + @inputs.pop )
  end

  # pop two, return sec-first
  def minus
    error_msg
    first = @inputs.pop
    second = @inputs.pop  
    @inputs.push( second - first )
  end

  # pop two, return quotient
  def divide
    error_msg
    first = @inputs.pop
    second = @inputs.pop
    @inputs.push( second.to_f / first )
  end

  # pop two, return product
  def times
    error_msg()
    @inputs.push( @inputs.pop.to_f * @inputs.pop )
  end

  def tokens(user_input)
    convert = {"*" => :*, "+"=>:+, "-"=>:-, "/"=>:/}
    user_input.split.map! do |value|
      convert.include?(value) ? convert[value] : value.to_i
    end
  end

  def evaluate(user_input)
    tokens(user_input).each do |token|
      if token == :+
        self.plus
      elsif token == :-
        self.minus
      elsif token == :*
        self.times
      elsif token == :/
        self.divide
      else
        self.push(token)
      end
    end
    return value
  end


  # helper functions
  def error_msg
    raise "calculator is empty" unless @inputs.length > 1
  end


end


calc = RPNCalculator.new

# puts calc.tokens("1 2 3 + +").to_s


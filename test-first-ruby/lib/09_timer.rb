class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds % 3600) / 60
    seconds = (@seconds %  60 )

    "%02d:%02d:%02d" % [hours, minutes, seconds]
  end

end


# time = Timer.new
# time.seconds = 12341
# puts time.time_string
require 'time'

def measure(n=1, &proc)
  
  #record time
  start_time = Time.now
  #call proc
  n.times { proc.call }

  #return (start-end)time
  return (Time.now - start_time)/n

end




# puts measure(100) {a = 1}
def reverser( &proc )
  proc.call.split.map {|word| word.reverse }.join(" ")
end

# puts reverser { 'test' }


def adder(n=1, &proc)
  proc.call + n
end

# puts adder(3) {5}


def repeater(n=1, &proc)
  n.times { yield proc }
 end
class Dictionary
  attr_accessor :entries

  def initialize
    @entries = Hash.new
  end

  def entries
    @entries
  end

  def keywords
    @entries.keys.sort
  end

  def add(options={})

    if options.class == String
      options = {options => nil }
    end
    @entries.merge!(options)
  end


  def include?(match_term)
    @entries.has_key?(match_term)
  end

  def find(search_term)
    results = {}
    if self.keywords.empty?
      return {}
    else
      #iterates through each keyword
      self.keywords.each do |key|
        # Checks if it starts the same
        if starts_with?(key, search_term)
          results.merge!({ key => @entries[key] })
        end
      end
    end

    return results
  end


  def printable

    output = self.keywords.map{|key| "[#{key}] \"#{self.find(key)[key]}\"" }
    output.join("\n")
  end



  # helper function
  def starts_with?(word, start)
    word[0..(start.length-1)] == start ? true : false
  end


end

a = Dictionary.new()
# puts a.entries
a.add('fishes' => 'cats', 'dogs' => 'gum')
puts a.printable 
# puts a.keywords.class
# puts a.include?('fishes')



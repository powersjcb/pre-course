class Book

  def title=(title)

    always_down = %w(the a an and in of)  #unless first
    @title = title.split.map!.with_index do |word, index|
      if  ( always_down.include?(word) & !(index == 0) )
        word
      else # upper case
        word.capitalize
      end
    end .join(" ")
  end

  def title
    @title
  end


end

# @book = Book.new
# puts @book
# # @book.title = "test again a word"
# puts @book.title

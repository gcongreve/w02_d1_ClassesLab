class Library

  def initialize(array_of_books)
    @array_of_books = array_of_books
  end

  def book_array
    return @array_of_books
  end


  #Create a method that takes in a book title and returns all of the information about that book

  def info_by_title(title)
    for book in @array_of_books
      return book if :title == title
    end
  end

  # def rental_info_by_title(title)
  #   book = info_by_title(title)
  #   return book[0][:rental_details]
  # end

  def rental_info_by_title(title)
      book = info_by_title(title)
      rental_info = "Student name: #{book[0][:rental_details][:student_name]}, Date due: #{book[0][:rental_details][:date]}"
      return rental_info
    end


    def create_new(title)
      @array_of_books.push({title: title, rental_details: {student_name: "", date: ""}})
    end


 #  def create_new(title)
 #    for book in @array_of_books
 #      book[:title] = title
 #    end
 # end



 # def create_new(title)
 #   @array_of_books << {title: title, rental_details: {student_name: "", date: ""}}
 # end

 def change_rental_details(title, new_name, new_date)
   for book in @array_of_books
     if book[:title] == title
       book[:rental_details][:student_name] = new_name
       book[:rental_details][:date] = new_date
     end
   end
 end

end

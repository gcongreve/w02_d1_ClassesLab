require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

def test_initialize
  book = Library.new([{title: "lord of the rings", rental_details: {student_name: "Jeff", date: "01/12/16"}}])
  assert_equal([{title: "lord of the rings", rental_details: {student_name: "Jeff", date: "01/12/16"}}], book.book_array)
end

def test_book_info_by_title
  book = Library.new([{title: "lord of the rings", rental_details: {student_name: "Jeff", date: "01/12/16"}}])
  result = book.info_by_title("lord of the rings")
  assert_equal([{title: "lord of the rings", rental_details: {student_name: "Jeff", date: "01/12/16"}}], result)
  p result
end

# def test_rental_info_by_title
#   book = Library.new([{title: "lord of the rings", rental_details: {student_name: "Jeff", date: "01/12/16"}}])
#   result = book.rental_info_by_title("lord of the rings").to_s
#   assert_equal("{:student_name=>\"Jeff\", :date=>\"01/12/16\"}", result)
# end

def test_rental_info_by_title
  book = Library.new([{title: "lord of the rings", rental_details: {student_name: "Jeff", date: "01/12/16"}}])
  result = book.rental_info_by_title("lord of the rings").to_s
  assert_equal("Student name: Jeff, Date due: 01/12/16", result)
end




def test_add_book
  book = Library.new([{title: "", rental_details: {student_name: "", date: ""}}])
  book.create_new("1984")
  assert_equal([{title: "1984", rental_details: {student_name: "", date: ""}}], book.book_array)
end

def test_add_book
  book = Library.new([{title: "lord of the rings", rental_details: {student_name: "Jeff", date: "01/12/16"}}])
  book.create_new("1984")
  assert_equal([{title: "lord of the rings", rental_details: {student_name: "Jeff", date: "01/12/16"}}, {title: "1984", rental_details: {student_name: "", date: ""}}], book.book_array)
end


def test_change_rental_details
  book = Library.new([{title: "lord of the rings", rental_details: {student_name: "Jeff", date: "01/12/16"}}])
  book.change_rental_details("lord of the rings", "Adam", "10/10/19")
  assert_equal([{title: "lord of the rings", rental_details: {student_name: "Adam", date: "10/10/19"}}], book.book_array)
end

end

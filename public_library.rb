class Library
  attr_accessor :shelves

  def initialize
    @shelves = Array.new
  end

  def add_shelves(shelves)
    @shelves << shelves
  end

  def count_shelves
    if @shelves.count == 1
      puts "There is #{@shelves.count} shelf."
    else
      puts "There are #{@shelves.count} shelves."
    end
  end

  def list_all_books
    @shelves.each do
      puts shelves
    end
  end

end

class Shelf
  attr_accessor :shelves, :book

  def initialize
    @shelves = Array.new
  end

  def add_book_to_shelf(book)
    @shelves << book
  end

  def remove_book_from_shelf(book)
    @shelves.delete_if { |book| book == book }
  end

  def list_books
    @shelves.each do
      puts book
    end
  end

end

class Books
  attr_accessor :title, :shelf

  def initialize(title)
    @title = title
  end

  def enshelf(shelf)
    shelf.add_book_to_shelf(self)
  end

  def unshelf(shelf)
    shelf.remove_book_from_shelf(self)
  end

end

shelfAH = Shelf.new
shelfIP = Shelf.new
shelfQZ = Shelf.new
book1 = Books.new("The Two Towers")
book2 = Books.new("A Dance with Dragons")
book3 = Books.new("Operation Mincemeat")
book4 = Books.new("Ready Player One")
book1.enshelf(shelfQZ)
book2.enshelf(shelfAH)
book3.enshelf(shelfIP)
book4.enshelf(shelfQZ)
library = Library.new
library.add_shelves(shelfAH)
library.add_shelves(shelfIP)
library.add_shelves(shelfQZ)
library.count_shelves
shelfAH.list_books
shelfIP.list_books
shelfQZ.list_books
library.list_all_books

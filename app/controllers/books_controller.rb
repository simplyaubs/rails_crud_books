class BooksController < ApplicationController

  def index
    @book = Book.new
    @books = Book.all
  end

  def create
    @book = Book.new(books_params)
    if @book.save

      redirect_to books_path
    else
      render :index
    end
  end

  private
  def books_params
    params.require(:book).permit(:name, :author)
  end

end
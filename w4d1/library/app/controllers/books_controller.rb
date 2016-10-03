class BooksController < ApplicationController
  def index
    @books = Book.all
    # render @books
  end

  def new
    redirect new_book_url
  end

  def create
    book = Book.new(book_params)

    if book.save
      redirect_to books_url
    end
  end

  def destroy
    book = Book.find(params[:id])
    if book.destroy
      redirect_to books_url
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end

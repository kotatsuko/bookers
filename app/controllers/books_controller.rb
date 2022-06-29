class BooksController < ApplicationController

    def new

    end

    def create
    @book=Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id)
    else
      render:index
    end
    end


  def index
    @books=Book.all
    @book=Book.new(book_params)
  end

  def show
  end

  def edit
  end



  private

  def book_params
  params.permit(:title,:body)
  end





end

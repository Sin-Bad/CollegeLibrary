class BooksController < ApplicationController
  def index
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end
  def create
    @book = Book.create(book_params)

    if @book.save
      redirect_to @book
    else
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to @book
    else
      render :edit
    end
  end
  def destroy
    @book = Book.find(params[:id])

    @book.destroy
    redirect_to :action => :index
  end
  private

  def book_params
    params.require(:book).permit(:bookname, :authorname, :description, :student_id)
  end
end

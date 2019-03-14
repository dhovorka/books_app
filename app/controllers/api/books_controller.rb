class Api::BooksController < ApplicationController

  def index
    @books = Book.all
    render "index.json.jbuilder"
  end

  def create
    @book = Book.new(
      title: params[:title],
      price: params[:price],
      genre: params[:genre],
      author_id: params[:author_id]
      )
    if @book.save
      render "show.json.jbuilder"
    else
      render json: {errors: @book.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @book = Book.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @book = Book.find_by(id: params[:id])
    @book.title = params[:title] || @book.title
    @book.price = params[:price] || @book.price
    @book.genre = params[:genre] || @book.genre
    @book.author_id = params[:author_id] || @book.author_id
    if @book.save
      render "show.json.jbuilder"
    else
      render json: {errors: @book.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @book = Book.find_by(id: params[:id])
    @book.destroy
    render json: {message: "BOOK DELETED!"}
  end

end

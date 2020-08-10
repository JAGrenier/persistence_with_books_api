class BooksController < ApplicationController

  # before_action( :find_book, { only: [:show] } )
  before_action :find_book, only: [:show]

  def index
    @books = Book.all
    render json: @books
  end

  def show
    render json: @book
  end

  def create
    @book = Book.create(
      title: params[:title],
      rating: params[:rating]
    )
    render json: @book
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end

end

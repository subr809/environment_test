class UsersBooksController < ApplicationController
  before_action :set_users_book, only: %i[ show edit update destroy ]

  # GET /users_books or /users_books.json
  def index
    @users_books = UsersBook.all
  end

  # GET /users_books/1 or /users_books/1.json
  def show
  end

  # GET /users_books/new
  def new
    @users_book = UsersBook.new
  end

  # GET /users_books/1/edit
  def edit
  end

  # POST /users_books or /users_books.json
  def create
    @users_book = UsersBook.new(users_book_params)

    respond_to do |format|
      if @users_book.save
        format.html { redirect_to users_book_url(@users_book), notice: "Users book was successfully created." }
        format.json { render :show, status: :created, location: @users_book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @users_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_books/1 or /users_books/1.json
  def update
    respond_to do |format|
      if @users_book.update(users_book_params)
        format.html { redirect_to users_book_url(@users_book), notice: "Users book was successfully updated." }
        format.json { render :show, status: :ok, location: @users_book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @users_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_books/1 or /users_books/1.json
  def destroy
    @users_book.destroy

    respond_to do |format|
      format.html { redirect_to users_books_url, notice: "Users book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_book
      @users_book = UsersBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_book_params
      params.require(:users_book).permit(:user_id, :book_id)
    end
end

class AddtoBooksController < ApplicationController
  before_action :set_addto_book, only: %i[ show edit update destroy ]

  # GET /addto_books or /addto_books.json
  def index
    @addto_books = AddtoBook.all
  end

  # GET /addto_books/1 or /addto_books/1.json
  def show
  end

  # GET /addto_books/new
  def new
    @addto_book = AddtoBook.new
  end

  # GET /addto_books/1/edit
  def edit
  end

  # POST /addto_books or /addto_books.json
  def create
    @addto_book = AddtoBook.new(addto_book_params)

    respond_to do |format|
      if @addto_book.save
        format.html { redirect_to addto_book_url(@addto_book), notice: "Addto book was successfully created." }
        format.json { render :show, status: :created, location: @addto_book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @addto_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addto_books/1 or /addto_books/1.json
  def update
    respond_to do |format|
      if @addto_book.update(addto_book_params)
        format.html { redirect_to addto_book_url(@addto_book), notice: "Addto book was successfully updated." }
        format.json { render :show, status: :ok, location: @addto_book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @addto_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addto_books/1 or /addto_books/1.json
  def destroy
    @addto_book.destroy

    respond_to do |format|
      format.html { redirect_to addto_books_url, notice: "Addto book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addto_book
      @addto_book = AddtoBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def addto_book_params
      params.require(:addto_book).permit(:author, :price, :date)
    end
end

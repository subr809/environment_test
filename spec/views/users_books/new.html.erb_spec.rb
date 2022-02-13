require 'rails_helper'

RSpec.describe "users_books/new", type: :view do
  before(:each) do
    assign(:users_book, UsersBook.new(
      user_id: 1,
      book_id: 1
    ))
  end

  it "renders new users_book form" do
    render

    assert_select "form[action=?][method=?]", users_books_path, "post" do

      assert_select "input[name=?]", "users_book[user_id]"

      assert_select "input[name=?]", "users_book[book_id]"
    end
  end
end

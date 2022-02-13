require 'rails_helper'

RSpec.describe "users_books/edit", type: :view do
  before(:each) do
    @users_book = assign(:users_book, UsersBook.create!(
      user_id: 1,
      book_id: 1
    ))
  end

  it "renders the edit users_book form" do
    render

    assert_select "form[action=?][method=?]", users_book_path(@users_book), "post" do

      assert_select "input[name=?]", "users_book[user_id]"

      assert_select "input[name=?]", "users_book[book_id]"
    end
  end
end

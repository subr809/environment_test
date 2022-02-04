require 'rails_helper'

RSpec.describe "addto_books/edit", type: :view do
  before(:each) do
    @addto_book = assign(:addto_book, AddtoBook.create!(
      author: "MyString",
      price: 1
    ))
  end

  it "renders the edit addto_book form" do
    render

    assert_select "form[action=?][method=?]", addto_book_path(@addto_book), "post" do

      assert_select "input[name=?]", "addto_book[author]"

      assert_select "input[name=?]", "addto_book[price]"
    end
  end
end

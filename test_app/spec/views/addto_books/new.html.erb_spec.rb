require 'rails_helper'

RSpec.describe "addto_books/new", type: :view do
  before(:each) do
    assign(:addto_book, AddtoBook.new(
      author: "MyString",
      price: 1
    ))
  end

  it "renders new addto_book form" do
    render

    assert_select "form[action=?][method=?]", addto_books_path, "post" do

      assert_select "input[name=?]", "addto_book[author]"

      assert_select "input[name=?]", "addto_book[price]"
    end
  end
end

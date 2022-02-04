require 'rails_helper'

RSpec.describe "addto_books/index", type: :view do
  before(:each) do
    assign(:addto_books, [
      AddtoBook.create!(
        author: "Author",
        price: 2
      ),
      AddtoBook.create!(
        author: "Author",
        price: 2
      )
    ])
  end

  it "renders a list of addto_books" do
    render
    assert_select "tr>td", text: "Author".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end

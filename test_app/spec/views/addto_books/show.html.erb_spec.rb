require 'rails_helper'

RSpec.describe "addto_books/show", type: :view do
  before(:each) do
    @addto_book = assign(:addto_book, AddtoBook.create!(
      author: "Author",
      price: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/2/)
  end
end

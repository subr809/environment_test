# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
	described_class.new(author: 'J.K Rowling')
	described_class.new(price: 5)
	select '2017', :from => 'book[date(1i)]'
	select 'January', :from => 'book[date(2i)]'
	select '1', :from => 'book[date(3i)]'
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end
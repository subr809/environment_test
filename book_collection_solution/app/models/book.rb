# frozen_string_literal: true

class Book < ApplicationRecord
  validates :title, :author, :price, :published_date, presence: true
end

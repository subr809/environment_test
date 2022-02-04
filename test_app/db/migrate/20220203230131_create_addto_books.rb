class CreateAddtoBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :addto_books do |t|
      t.string :author
      t.integer :price
      t.date :date

      t.timestamps
    end
  end
end

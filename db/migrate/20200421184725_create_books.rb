class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.string :publisher
      t.string :published_on
      t.float :price
      t.string :isbn

      t.timestamps
    end
  end
end
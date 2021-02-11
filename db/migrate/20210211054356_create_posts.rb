class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :category
      t.text :description
      t.date :date
      t.time :time
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end

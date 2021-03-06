class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.boolean :published , default: false
      t.datetime :publish_date

      t.timestamps null: false
    end
  end
end

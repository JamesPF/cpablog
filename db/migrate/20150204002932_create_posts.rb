class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.date :date
      t.string :content
      t.string :page_title
      t.string :meta_description

      t.timestamps
    end
  end
end

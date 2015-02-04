class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.string :content
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end

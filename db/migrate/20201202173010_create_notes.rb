class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :author
      t.string :title
      t.string :content
      t.string :image_url
      t.integer :votes
      t.integer :user_id


      t.timestamps
    end
  end
end

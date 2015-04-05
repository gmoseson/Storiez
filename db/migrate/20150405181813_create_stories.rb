class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :body
      t.integer :user_id
      t.integer :prompt_id
      t.string :photo

      t.timestamps null: false
    end
  end
end

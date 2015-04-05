class CreatePrompts < ActiveRecord::Migration
  def change
    create_table :prompts do |t|
      t.string :name
      t.string :category

      t.timestamps null: false
    end
  end
end

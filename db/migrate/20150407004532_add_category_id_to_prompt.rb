class AddCategoryIdToPrompt < ActiveRecord::Migration
  def change
    add_column :prompts, :category_id, :integer
  end
end

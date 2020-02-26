class AddSlugToCatPersonalitys < ActiveRecord::Migration[6.0]
  def change
    add_column :cat_personalities, :slug, :string
    add_index :cat_personalities, :slug, unique: true
  end
end

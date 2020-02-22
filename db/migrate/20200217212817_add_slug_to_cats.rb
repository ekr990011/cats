class AddSlugToCats < ActiveRecord::Migration[6.0]
  def change
    add_column :cats, :slug, :string
    add_index :cats, :slug, unique: true
  end
end

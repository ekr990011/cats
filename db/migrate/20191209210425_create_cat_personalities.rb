class CreateCatPersonalities < ActiveRecord::Migration[6.0]
  def change
    create_table :cat_personalities do |t|
      t.integer :catID
      t.string :name
      t.string :image
      t.text :personality
      t.text :business
      t.text :romance
      t.text :athletics

      t.timestamps
    end
  end
end

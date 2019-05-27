class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :title
      t.text :short_description
      t.string :image
      t.string :thumbnail

      t.timestamps
    end
  end
end

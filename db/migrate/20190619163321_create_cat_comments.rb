class CreateCatComments < ActiveRecord::Migration[6.0]
  def change
    create_table :cat_comments do |t|
      t.belongs_to :cat, index: true

      t.timestamps
    end
  end
end

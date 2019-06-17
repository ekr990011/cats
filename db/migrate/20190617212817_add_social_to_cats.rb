class AddSocialToCats < ActiveRecord::Migration[6.0]
  def change
    add_column :cats, :social, :string
  end
end

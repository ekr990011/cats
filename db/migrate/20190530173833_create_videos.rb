class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :video_id
      t.belongs_to :cat, index: true

      t.timestamps
    end
  end
end

class CreateTricks < ActiveRecord::Migration[5.1]
  def change
    create_table :tricks do |t|
      t.string :name
      t.string :type
      t.string :example_video

      t.timestamps
    end
  end
end

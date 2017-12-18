class ChangeTypeToTrickType < ActiveRecord::Migration[5.1]
  def change
  	remove_column :tricks, :type, :string
  	add_column :tricks, :trick_type, :string
  end
end

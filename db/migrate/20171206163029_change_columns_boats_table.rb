class ChangeColumnsBoatsTable < ActiveRecord::Migration[5.1]
  def change
  	change_column(:boats, :max_capacity, :integer)
  end
end

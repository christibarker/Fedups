class ChangeColumnsJobsTable < ActiveRecord::Migration[5.1]
  def change
  	change_column(:jobs, :containers_needed, :integer)
  	change_column(:jobs, :cost, :integer)
  end
end

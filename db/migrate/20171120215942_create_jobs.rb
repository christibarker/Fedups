class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :cost
      t.string :description
      t.string :orgin
      t.string :destination
      t.string :containers_needed
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

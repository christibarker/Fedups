class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :location
      t.string :max_capacity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

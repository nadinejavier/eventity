class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :address
      t.text :description
      t.boolean :complete
      t.integer :hosted_by
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end

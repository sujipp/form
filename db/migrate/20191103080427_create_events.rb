class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :categrory
      t.string :description
      t.string :location
      t.string :start
      t.string :end
      t.string :phone

      t.timestamps
    end
  end
end

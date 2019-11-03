class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :event
      t.string :username
      t.string :description

      t.timestamps
    end
  end
end

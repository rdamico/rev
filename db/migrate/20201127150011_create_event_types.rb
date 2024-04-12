class CreateEventTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :event_types do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
  end
end

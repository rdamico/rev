class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.references :customer, index: true, foreign_key: {on_delete: :cascade}
      t.references :event_type, index: true, foreign_key: {on_delete: :cascade}
      t.datetime :start, null: false
      t.datetime :finish, null: false
      t.timestamps null: false
    end
  end
end

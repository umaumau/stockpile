class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.integer   :price,       null: false
      t.integer   :time_minute, null: false
      t.string    :content,     null: false
      t.references :user,        null: false, foreign_key: true
      t.timestamps
    end
  end
end

class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.integer   :price
      t.integer   :time_minute
      t.string    :content,     null: false
      t.references :user,        null: false, foreign_key: true
      t.timestamps
    end
  end
end

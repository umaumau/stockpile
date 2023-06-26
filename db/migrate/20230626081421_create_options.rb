class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.string     :goal
      t.date       :limit
      t.integer    :rate
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end

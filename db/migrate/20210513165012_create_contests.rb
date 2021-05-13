class CreateContests < ActiveRecord::Migration[6.1]
  def change
    create_table :contests do |t|
      t.string :name
      t.string :organizer
      t.datetime :starts_at
      t.datetime :finishes_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

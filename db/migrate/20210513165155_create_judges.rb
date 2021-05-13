class CreateJudges < ActiveRecord::Migration[6.1]
  def change
    create_table :judges do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.references :contest, null: false, foreign_key: true

      t.timestamps
    end
  end
end

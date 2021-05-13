class CreateClarifications < ActiveRecord::Migration[6.1]
  def change
    create_table :clarifications do |t|
      t.references :team, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.references :judge, null: false, foreign_key: true
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end

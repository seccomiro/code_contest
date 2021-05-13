class CreateEvaluations < ActiveRecord::Migration[6.1]
  def change
    create_table :evaluations do |t|
      t.references :submission, null: false, foreign_key: true
      t.references :judge, null: false, foreign_key: true
      t.integer :result

      t.timestamps
    end
  end
end

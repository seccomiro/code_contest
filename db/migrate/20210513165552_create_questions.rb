class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.references :contest, null: false, foreign_key: true
      t.integer :number
      t.text :description
      t.string :language

      t.timestamps
    end
  end
end

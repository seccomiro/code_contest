class CreateSubmissions < ActiveRecord::Migration[6.1]
  def change
    create_table :submissions do |t|
      t.references :question, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.text :code
      t.string :language

      t.timestamps
    end
  end
end

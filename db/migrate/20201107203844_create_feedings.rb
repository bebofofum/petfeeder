class CreateFeedings < ActiveRecord::Migration[6.0]
  def change
    create_table :feedings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :pet, null: false, foreign_key: true
      t.boolean :completed
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end

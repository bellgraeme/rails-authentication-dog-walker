class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.references :owner, index: true, foreign_key: true
      t.string :name
      t.string :breed

      t.timestamps null: false
    end
  end
end

class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.references :owner, index: true, foreign_key: true
      t.integer :bookings

      t.timestamps null: false
    end
  end
end

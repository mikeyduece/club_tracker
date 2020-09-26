class CreateClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :clubs, id: :uuid do |t|
      t.string :number, null: false
      t.integer :club_type, null: false, default: 0, index: true

      t.timestamps
    end
    
    add_index :clubs, %i[number club_type], unique: true
  end
end

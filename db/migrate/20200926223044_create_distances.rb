class CreateDistances < ActiveRecord::Migration[6.0]
  def change
    create_table :distances, id: :uuid do |t|
      t.integer :number, null: false
      t.integer :unit, null: false, index: true, default: 0
      t.references :user_club, index: true, null: false, type: :uuid, foreign_key: true

      t.timestamps
    end
    
    add_index :distances, %i[number unit user_club_id]
  end
end

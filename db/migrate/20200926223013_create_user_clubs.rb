class CreateUserClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :user_clubs, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.references :club, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
    
    add_index :user_clubs, %i[user_id club_id], unique: true
  end
end

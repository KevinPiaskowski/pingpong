class CreateMatches < ActiveRecord::Migration
  def change
    drop_table :matches
    create_table :matches do |t|
      t.integer :player1_id
      t.integer :player2_id
      t.timestamps null: false
    end
  end
end

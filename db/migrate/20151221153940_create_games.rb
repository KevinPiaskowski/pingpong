class CreateGames < ActiveRecord::Migration
  def change
    drop_table :games
    create_table :games do |t|
      t.integer :p1_score
      t.integer :p2_score
      t.belongs_to :match, index: true
      t.timestamps null: false
    end
  end
end

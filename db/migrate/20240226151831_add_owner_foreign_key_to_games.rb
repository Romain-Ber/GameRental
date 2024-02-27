class AddOwnerForeignKeyToGames < ActiveRecord::Migration[7.1]
  def change
    add_reference :games, :owner, foreign_key: { to_table: :users }
  end
end

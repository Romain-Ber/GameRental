class ChangeForeignKeyToGames < ActiveRecord::Migration[7.1]
  def change
    rename_column :games, :owner_id, :user_id
  end
end

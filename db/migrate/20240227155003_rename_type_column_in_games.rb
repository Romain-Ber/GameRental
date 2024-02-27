class RenameTypeColumnInGames < ActiveRecord::Migration[7.1]
  def change
    rename_column :games, :type, :game_type
  end
end

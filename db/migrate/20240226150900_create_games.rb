class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :name
      t.string :type
      t.string :content
      t.decimal :price

      t.timestamps
    end
  end
end

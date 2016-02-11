class CreateJungleBookWolves < ActiveRecord::Migration
  def change
    create_table :jungle_book_wolves do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end

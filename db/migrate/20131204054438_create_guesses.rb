class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.string :username
      t.string :definition

      t.timestamps
    end
  end
end

class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.integer :number
      t.string :time
      t.string :username

      t.timestamps
    end
  end
end

class CreateRunners < ActiveRecord::Migration
  def change
    create_table :runners do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.integer :age
      t.string :level
      t.text :interests

      t.timestamps
    end
  end
end

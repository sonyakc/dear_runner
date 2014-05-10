class AddEmailToRunners < ActiveRecord::Migration
  def change
    add_column :runners, :email, :string
    add_index :runners, :email
  end
end

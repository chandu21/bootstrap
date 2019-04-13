class AddnewColumnsToUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :description
  	remove_column :users, :dob
  	remove_column :users, :education
  	remove_column :users, :name
  	add_column :users, :email, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :role_id, :integer
  end
end

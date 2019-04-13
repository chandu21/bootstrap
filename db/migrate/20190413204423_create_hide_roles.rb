class CreateHideRoles < ActiveRecord::Migration
  def change
    create_table :hide_roles do |t|
      t.string :role_ids, array: true, default: []
      t.timestamps null: false
    end
  end
end

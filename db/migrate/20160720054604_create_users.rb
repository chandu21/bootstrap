class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :description
      t.date :dob
      t.string :education

      t.timestamps null: false
    end
  end
end

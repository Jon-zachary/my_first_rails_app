class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :username, unique: true
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
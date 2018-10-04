class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :house_number
      t.string :apt
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.text :notes
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end

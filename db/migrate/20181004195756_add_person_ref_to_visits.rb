class AddPersonRefToVisits < ActiveRecord::Migration[5.2]
  def change
    add_reference :visits, :person, foreign_key: true
  end
end

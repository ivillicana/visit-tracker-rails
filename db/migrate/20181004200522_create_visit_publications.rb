class CreateVisitPublications < ActiveRecord::Migration[5.2]
  def change
    create_table :visit_publications do |t|
      t.references :visits, foreign_key: true
      t.references :publications, foreign_key: true

      t.timestamps
    end
  end
end

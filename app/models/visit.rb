class Visit < ApplicationRecord
  belongs_to :person
  has_many :visit_publications
  has_many :publications, through: :visit_publications
end

class Publication < ApplicationRecord
  has_many :visit_publications
  has_many :visits, through: :visit_publications
end

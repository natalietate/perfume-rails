class Perfume < ApplicationRecord
  validates :name, :maker, presence: true

end

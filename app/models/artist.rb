class Artist < ApplicationRecord
  # dependent: destroy all songs when given artist is destroyed
  has_many :songs, dependent: destroy
  
  validates :name, presence: true
  validates :name, uniqueness: true

end


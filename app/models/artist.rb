class Artist < ApplicationRecord
  validates :artist_name, presence: true
  has_many :songs, dependent: :destroy
end

class Artist < ApplicationRecord
  validates :artist_name, presence: true
  has_many :songs, dependent: :destroy

  def self.order_by_name
    order(:artist_name)
  end

end

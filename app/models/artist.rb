class Artist < ApplicationRecord
  validates :name, presence: true
  has_many :songs, dependent: :destroy

  def self.order_by_name
    order(:name)
  end

  def self.order_by_name_desc
    order(:name).reverse
  end

  def self.order_by_created
    order(:created_at)
  end

  def self.order_by_created_desc
    order(:created_at).reverse
  end



end

class Product < ApplicationRecord

  validates :name, presence: true
  validates :description, presence: true
  validates :colour, presence: true
  validates :size, presence: true
  validates :price, presence: true
  validates :image_url, presence: true

  def self.search(search_term)
    if Rails.env.development?
      Product.where("name LIKE ?", "%#{search_term}%")
    else
      Product.where("name ilike ?", "%#{search_term}%")
    end
  end
  has_many :comments
  def highest_rating_comment
    comments.rating_desc.first
  end
  def lowest_rating_comment
    comments.rating_desc.last
  end

  def average_rating
    comments.average(:rating).to_f
  end

  def get_recent_views
    $redis.get("product")
  end

  def set_recent_views
    $redis.set("product", "product:#{id}")
    get_recent_views
  end

end

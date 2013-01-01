class Post < ActiveRecord::Base
  attr_accessible :title, :url

  validates :title, presence: true
  validates :url, presence: true

  has_many :comments
  has_many :votes

  before_create :slug_for_title
  	
  def to_param
  	slug
  end

  def votes_count
    price_value = self.votes.where(price: "up").count - self.votes.where(price: "down").count
    if price_value <= 1
      return 1
    else 
      return price_value
    end 
  end

  def slug_for_title
  	self.slug = title.split(' ').join('_')
  end

end

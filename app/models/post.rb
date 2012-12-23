class Post < ActiveRecord::Base
  attr_accessible :title, :url

  has_many :comments

  before_create :slug_for_title
  	
  def to_param
  	slug
  end

  def slug_for_title
  	self.slug = title.split(' ').join('_')
  end

end

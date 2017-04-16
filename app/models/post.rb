class Post < ApplicationRecord
<<<<<<< HEAD
  
  mount_uploader :image, ImageUploader
  has_many :taggings
  has_many :tags,through: :taggings
  validates :title, :summary, :body,presence: true
=======
  mount_uploader :image, ImageUploader
  validates :title, :summary, :body,presence: true
  has_many :taggings
  has_many :tags,through: :taggings
>>>>>>> 1ветка

  def all_tags
  	self.tags.map(&:name).join(',')
  end

  def all_tags=(names)
<<<<<<< HEAD
    self.tags = names.split(',').map do |name| 
      Tag.where(name: name.strip).first_or_create!
=======
  	self.tags = names.split(',').map do |name| 
    Tag.where(name: name.strip).first_or_create!
>>>>>>> 1ветка
  end
end
end

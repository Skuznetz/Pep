class Tag < ApplicationRecord
<<<<<<< HEAD

=======
>>>>>>> 1ветка
  has_many :taggings
  has_many :posts,through: :taggings

  def self.counts
<<<<<<< HEAD
  	self.select("name, count(taggings.tag_id) as count").joins(:taggings).group("taggings.tag_id")
=======
  	self.select("name, count(taggings.tag_id)as count").joins(:taggings).group("taggings.tag_id")
>>>>>>> 1ветка
  end
end

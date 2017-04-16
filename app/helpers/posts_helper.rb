module PostsHelper
  def tag_cloud(tags,classes)
  	max = tags.sort_by(&:count).last
<<<<<<< HEAD
  	tags.each do |tag| 
  	  index = tag.count.to_f / max.count * (classes.size-1)
  	  yield(tag, classes[index.round])
=======
    tags.each do |tag|
  	  index = tag.count.to_f / max.count * (classes.size-1)
  	  yield(tag,classes[index.round])
>>>>>>> 1ветка
  	end
  end
end
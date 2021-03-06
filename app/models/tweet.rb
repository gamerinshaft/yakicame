class Tweet < ActiveRecord::Base
  attr_accessible :content,:timage
  belongs_to :user
  mount_uploader :timage, ImageUploader
  default_scope order("created_at DESC").includes(:favorites,:user)
  has_many :favorites,dependent: :destroy
  
  def favorited? user
    favorites.any? do |f|
      f.user.id == user.id
    end
  end  
  
end




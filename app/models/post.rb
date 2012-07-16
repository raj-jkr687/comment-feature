class Post < ActiveRecord::Base
  validates :content,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 2 }
  has_many :comments, :dependent => :destroy
end

class Post < ActiveRecord::Base
  attr_accessible :name, :user  
  validates_presence_of :name ,:message=>'Name cant be blank take another'
end
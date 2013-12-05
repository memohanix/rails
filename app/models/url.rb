class Url < ActiveRecord::Base
  attr_accessible : field/url
  validates :url, :presence => true
end

class Article < ActiveRecord::Base
  validates :title, presense: true
  validates :description, presense: true
end 
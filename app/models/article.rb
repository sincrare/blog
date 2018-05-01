class Article < ApplicationRecord
  has_many :article_authorities
  has_many :authorities, :through => :article_authorities
  has_many :article_tags
  has_many :tags, :through => :article_tags
  has_many :comments
  has_many :likes
end

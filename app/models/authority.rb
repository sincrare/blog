class Authority < ApplicationRecord
  has_many :article_authorities
  has_many :articles, :through => :article_authorities
  has_many :users
end

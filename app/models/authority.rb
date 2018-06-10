class Authority < ApplicationRecord
  has_many :article_authorities, dependent: :destroy
  has_many :articles, through: :article_authorities
end

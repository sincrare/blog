class Authority < ApplicationRecord
  has_many :article_authorities, dependent: :destroy
  has_many :articles, through: :article_authorities
  has_many :users, dependent: :restrict_with_error
end

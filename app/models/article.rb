class Article < ApplicationRecord
  has_many :article_authorities, dependent: :destroy
  has_many :authorities, through: :article_authorities
  has_many :article_tags, dependent: :destroy
  has_many :tags, through: :article_tags
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :article_images
  accepts_nested_attributes_for :article_images

  scope :order_by_descending, -> { order(entry_at: :desc) }
end

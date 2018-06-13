class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  before_create do
    # FIXME: 確認のため、全て管理者権限
    self.admin = true
  end
end

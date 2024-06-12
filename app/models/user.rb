class User < ApplicationRecord
  has_many :tasks
 validates :name, presence: true, length: { maximum: 30 } 
  # errors.add(:name, "名前を入力してください")
  #validates :name, presence: {message:"名前を入力してください"}
  #validates :email, presence: true, length: { maximum: 255 }, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: {message:"メールアドレスはすでに使用されています"}, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase! }
  has_secure_password
  validates :password, length: { minimum: 6,message: "パスワードは6文字以上で入力してください" }
end

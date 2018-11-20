class User < ApplicationRecord
  before_save { self.email.downcase! }
  #小文字変換処理
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  #正規表現にてEmailアドレスのみ
  
  has_secure_password
end

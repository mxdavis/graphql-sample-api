class User < ApplicationRecord
  has_many :users
  has_many :comments
end

class User < ApplicationRecord
    validates :name, presence: true
    validates :password, presence: true, confirmation: true
    validates :email, presence: true
end

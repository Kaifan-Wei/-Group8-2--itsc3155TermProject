class User < ApplicationRecord
    has_many :contacts
    validates :name, presence: true
    validates :password, presence: true, confirmation: true
    validates :email, presence: true
end

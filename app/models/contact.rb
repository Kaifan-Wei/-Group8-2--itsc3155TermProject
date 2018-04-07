class Contact < ApplicationRecord
    belongs_to :user
    validates :name, presence: true
    validates :number, format: { with: /\d{10}/,
        message: "Only allows numbers" }
end
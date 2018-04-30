class Contact < ApplicationRecord
    validates :name, presence: true
    validates :number, format: { with: /\d{10}/,
        message: "is invalid" }
end

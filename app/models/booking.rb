class Booking < ApplicationRecord
    validates :to_email, presence: true, allow_blank: false
    validates :from_email, presence: true, allow_blank: false
end

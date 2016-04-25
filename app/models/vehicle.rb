class Vehicle < ActiveRecord::Base
    validates :model, presence: true
    validates :year, presence: true
    validates :capacity, presence: true
    validates :price, presence: true
    validates :photo, presence: true
end

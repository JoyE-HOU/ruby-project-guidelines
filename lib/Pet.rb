class Pet < ActiveRecord::Base
    has_many :petitems 
    has_many :items, through: :petitems
end
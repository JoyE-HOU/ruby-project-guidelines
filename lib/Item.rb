class Item < ActiveRecord::Base
    has_many :petitems
    has_many :pets, through: :petitems
end

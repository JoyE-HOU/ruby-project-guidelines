class Petitem < ActiveRecord::Base
    belongs_to :item 
    belongs_to :pet 
end

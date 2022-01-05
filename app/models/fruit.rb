class Fruit < ApplicationRecord

    validates :name, presence: true, uniqueness: { case_sensitive: false }
    validates :carbohydrates, presence: true
    validates :protein,  presence: true
    validates :fat,  presence: true
    
end

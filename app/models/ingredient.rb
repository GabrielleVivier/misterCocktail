class Ingredient < ActiveRecord::Base
  has_many :cocktails
  has_many :cocktails,
            through: :doses
end

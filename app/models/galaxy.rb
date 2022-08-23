class Galaxy < ApplicationRecord
  has_many :stars
  has_many :planets, through: :stars
end

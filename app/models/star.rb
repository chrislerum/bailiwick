class Star < ApplicationRecord
  belongs_to :galaxy
  has_many :planets
end

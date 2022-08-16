class Interest < ApplicationRecord
  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
    attachable.variant :medium, resize_to_limit: [400, 400]
    attachable.variant :large, resize_to_limit: [600, 600]
  end
end

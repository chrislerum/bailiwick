class AddImageAndDescriptionToHindrances < ActiveRecord::Migration[7.0]
  def change
    add_column :hindrances, :description, :text
  end
end

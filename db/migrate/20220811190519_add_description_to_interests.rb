class AddDescriptionToInterests < ActiveRecord::Migration[7.0]
  def change
    add_column :interests, :description, :text
  end
end

class AddNameAndImageToExcuses < ActiveRecord::Migration[7.0]
  def change
    add_column :excuses, :name, :string
  end
end

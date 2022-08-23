class CreateStars < ActiveRecord::Migration[7.0]
  def change
    create_table :stars do |t|
      t.string :name
      t.references :galaxy, null: false, foreign_key: true

      t.timestamps
    end
  end
end

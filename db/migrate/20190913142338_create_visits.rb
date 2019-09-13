class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.string :title
      t.string :city
      t.string :profile_picture
      t.text :description
      t.float :duration
      t.float :cost
      t.string :category
      t.string :accessibility
      t.string :location
      t.references :guide, foreign_key: true

      t.timestamps
    end
  end
end

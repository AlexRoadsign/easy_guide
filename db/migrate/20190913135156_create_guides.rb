class CreateGuides < ActiveRecord::Migration[5.2]
  def change
    create_table :guides do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.string :city
      t.string :profile_picture
      t.text :description
      t.string :lang1
      t.string :lang2

      t.timestamps
    end
  end
end

class CreateAdventures < ActiveRecord::Migration[6.0]
  def change
    create_table :adventures do |t|
      t.string :title
      t.text :description
      t.string :website_url
      t.string :image_url
      t.boolean :complete, default: false
      t.integer :likes, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateItems < ActiveRecord::Migration[8.1]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :status
      t.string :collection

      t.timestamps
    end
  end
end

class AddSourceUrlItems < ActiveRecord::Migration[8.1]
  def change
    add_column :items, :source_url, :string
  end
end
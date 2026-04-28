class AddClaimFieldsToItems < ActiveRecord::Migration[8.1]
  def change
    add_column :items, :claimed_by, :string
    add_column :items, :claimed_at, :datetime
  end
end

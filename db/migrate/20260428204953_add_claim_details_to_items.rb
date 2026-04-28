class AddClaimDetailsToItems < ActiveRecord::Migration[8.1]
  def change
    add_column :items, :claimed_first_name, :string
    add_column :items, :claimed_last_name, :string
    add_column :items, :claimed_email, :string
  end
end

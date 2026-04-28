class CreateTranscriptions < ActiveRecord::Migration[8.1]
  def change
    create_table :transcriptions do |t|
      t.text :content
      t.string :transcriber_name
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end

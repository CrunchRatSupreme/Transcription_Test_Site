class AddEmailToTranscriptions < ActiveRecord::Migration[8.1]
  def change
    add_column :transcriptions, :transcriber_email, :string
  end
end

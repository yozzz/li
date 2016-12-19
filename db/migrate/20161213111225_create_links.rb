class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.string :user_url
      t.string :short_key

      t.timestamps

      t.index :short_key, :unique => true
    end
  end
end

class CreateTwis < ActiveRecord::Migration[5.1]
  def change
    create_table :twis do |t|
      t.text :content
      t.timestamps
    end
  end
end

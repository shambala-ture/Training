class CreateHomepages < ActiveRecord::Migration
  def change
    create_table :homepages do |t|
      t.string :name
      t.text :message

      t.timestamps null: false
    end
  end
end

class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :Name
      t.integer :category_id
      t.string :new
      t.string :show

      t.timestamps
    end
  end
end

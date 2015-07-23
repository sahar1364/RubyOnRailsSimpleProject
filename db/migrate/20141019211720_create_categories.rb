class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :Name
      t.integer :Priority
      t.text :Description

      t.timestamps
    end
  end
end

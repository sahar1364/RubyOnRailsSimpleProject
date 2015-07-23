class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :Name
      t.text :Description
      t.references :category, index: true

      t.timestamps
    end
  end
end

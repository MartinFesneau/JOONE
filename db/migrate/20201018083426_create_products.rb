class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :joone_id
      t.string :image

      t.timestamps
    end
  end
end

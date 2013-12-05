class CreateBrts < ActiveRecord::Migration
  def change
    create_table :brts do |t|
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :title
      t.text :details
      t.float :amount

      t.timestamps
    end
  end
end

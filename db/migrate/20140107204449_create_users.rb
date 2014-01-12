class CreateUsers < ActiveRecord::Migration
  def self.up
    
      change_column :users, :amount, :decimal, :precision => 8, :scale => 12
  end
end

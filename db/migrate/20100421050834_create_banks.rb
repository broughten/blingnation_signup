class CreateBanks < ActiveRecord::Migration
  def self.up
    create_table :banks do |t|
      t.string :name
      t.string :city
      t.string :state

      t.timestamps
    end
  end

  def self.down
    drop_table :banks
  end
end

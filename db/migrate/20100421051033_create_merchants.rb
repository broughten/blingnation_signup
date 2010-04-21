class CreateMerchants < ActiveRecord::Migration
  def self.up
    create_table :merchants do |t|
      t.string :name
      t.int :bank_id

      t.timestamps
    end
  end

  def self.down
    drop_table :merchants
  end
end

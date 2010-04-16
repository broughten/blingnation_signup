class AddBusinessTypeToAgreements < ActiveRecord::Migration
  def self.up
    add_column :agreements, :business_type, :string
  end

  def self.down
    remove_column :agreements, :business_type
  end
end

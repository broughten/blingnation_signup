class AddRulesToAgreements < ActiveRecord::Migration
  def self.up
    add_column :agreements, :rules, :boolean
  end

  def self.down
    remove_column :agreements, :rules
  end
end

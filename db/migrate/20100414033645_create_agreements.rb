class CreateAgreements < ActiveRecord::Migration
  def self.up
    create_table "agreements", :force => true do |t|
      t.column :legal_name,                :string, :limit => 128
      t.column :business_name,             :string, :limit => 128
      t.column :short_name,                :string, :limit => 32
      t.column :business_phone,            :string, :limit => 32
      t.column :physical_address,          :string, :limit => 128
      t.column :mailing_address,           :string, :limit => 128
      t.column :city,                      :string, :limit => 64
      t.column :state,                     :string, :limit => 32
      t.column :zip,                       :string, :limit => 32
      t.column :authorized_contact,        :string, :limit => 64
      t.column :authorized_contact_cell,   :string, :limit => 32
      t.column :fax,                       :string, :limit => 32
      t.column :email,                     :string, :limit => 128
      t.column :years_in_business,         :integer
      t.column :ein,                       :string, :limit => 32
      t.column :ownership_type,            :string, :limit => 16
      t.column :num_of_blingers,           :integer
      t.column :name_on_account,           :string, :limit => 128
      t.column :bank_name,                 :string, :limit => 128
      t.column :account_number,            :string, :limit => 64
      t.column :new_account,               :boolean
      t.column :printed_name,              :string, :limit => 64
      t.column :initials,                  :string, :limit => 8
      t.column :title,                     :string, :limit => 64
      t.comumn :date,                      :string, :limit => 16
      t.column :created_at,                :datetime
      t.column :updated_at,                :datetime
    end
  end

  def self.down
    drop_table "agreements"
  end
end

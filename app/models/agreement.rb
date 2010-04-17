class Agreement < ActiveRecord::Base
  validates_format_of       :email, :with => /.*@.*/, :message => 'is invalid'
  validates_presence_of     :business_name
  validates_presence_of     :business_phone
  validates_presence_of     :physical_address
  validates_presence_of     :mailing_address
  validates_presence_of     :city
  validates_presence_of     :state
  validates_presence_of     :zip
  validates_presence_of     :authorized_contact
  validates_presence_of     :authorized_contact_cell
  validates_presence_of     :email
  validates_presence_of     :years_in_business
  validates_presence_of     :ein
  validates_presence_of     :ownership_type
  validates_presence_of     :num_of_blingers
  validates_presence_of     :name_on_account
  validates_presence_of     :bank_name
  validates_presence_of     :account_number
  validates_presence_of     :printed_name
  validates_presence_of     :initials
  validates_presence_of     :title
end

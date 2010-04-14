# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100414033645) do

  create_table "agreements", :force => true do |t|
    t.string   "legal_name",              :limit => 128
    t.string   "business_name",           :limit => 128
    t.string   "short_name",              :limit => 32
    t.string   "business_phone",          :limit => 32
    t.string   "physical_address",        :limit => 128
    t.string   "mailing_address",         :limit => 128
    t.string   "city",                    :limit => 64
    t.string   "state",                   :limit => 32
    t.string   "zip",                     :limit => 32
    t.string   "authorized_contact",      :limit => 64
    t.string   "authorized_contact_cell", :limit => 32
    t.string   "fax",                     :limit => 32
    t.string   "email",                   :limit => 128
    t.integer  "years_in_business"
    t.string   "ein",                     :limit => 32
    t.string   "ownership_type",          :limit => 16
    t.integer  "num_of_blingers"
    t.string   "name_on_account",         :limit => 128
    t.string   "bank_name",               :limit => 128
    t.string   "account_number",          :limit => 64
    t.boolean  "new_account"
    t.string   "printed_name",            :limit => 64
    t.string   "initials",                :limit => 8
    t.string   "title",                   :limit => 64
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

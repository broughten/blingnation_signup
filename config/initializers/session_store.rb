# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_blingnation_signup_session',
  :secret      => 'b5a45f30dc6ede4db05f519f6ce49e3d0bf2b28cb26c01dd908ec0334625d1e1cfccc1271372760c34667a353b68c306e61fba7b1cf4238fa7704628910e8fe9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

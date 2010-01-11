# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_oscars_session',
  :secret      => '9ace2a675c9a24bf7b8a3b490483f216a483d8fbbeacb0333dfe748304530fbe4ecdb9bbaf15131a4f68e95a71f4a4e509853148c0f7fab309887bfca11c6dc3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

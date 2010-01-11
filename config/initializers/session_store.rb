# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_oscars_session',
  :secret      => 'bc4ca4311f34b0d7134347016b64e31faa42d4e36d3fa44b835bbbbd3cf6e759e37afe470ac9ed19e73d15a2414375ccae056107c6a3a0610b327b7b9b769c80'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

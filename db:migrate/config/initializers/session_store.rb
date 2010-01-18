# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_db:migrate_session',
  :secret      => 'ff89ae72d985c2f7275669c53ee9a43f895efdff8d01106b1bb841bf78b7ee4639ab69030ecdfd378cf874d7596c6c05fa409f65e50b6090314093000becc026'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

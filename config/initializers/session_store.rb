# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_wice_grid_examples_session',
  :secret      => '9c5d06464510fbd6ecad09af207e7cdd69289f0c83c40fceea3cee1696c5b758ddb6033f3ba5b08af9e787a1c2ba87a064c1323357abda5aab06022854681c1b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

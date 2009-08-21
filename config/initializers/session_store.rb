# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_adamcarlile_session',
  :secret      => '5d5d8974e558c31584e4cca5696a9237594b4e4438cf577cd0e6fda8d5aab948aab99b77b588092df3af06545a573d712e955d01924183bfbc448b73938754a2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

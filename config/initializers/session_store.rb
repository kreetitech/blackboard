# Be sure to restart your server when you modify this file.

Blackboard::Application.config.session_store :active_record_store, :key => '_blackboard_session_id'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# Blackboard::Application.config.session_store :active_record_store

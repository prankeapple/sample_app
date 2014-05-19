# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token
    File.read(token_file).chomp
  else
    # Generate a new token and store it in a token_file
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end


SampleApp::Application.config.secret_key_base = '859354d5fa1af1617dd1195bde83d51cb00ee556e2a88a8c9acd9bf306f9e81503ccacbfa6ee44d9d282207e8184c8e94f4f91fd33ed266874fcc5a45116cddd'

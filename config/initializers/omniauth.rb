OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :google_oauth2, '616821011266-b177jkk7nrultl5rmoj8a9svkhmb1437.apps.googleusercontent.com', 'tfSbpntMhkj2DRdSsZKlOjwk', 
    {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
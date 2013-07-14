Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['OMNIAUTH_GOOGLE_PROVIDER_KEY'], ENV['OMNIAUTH_GOOGLE_PROVIDER_SECRET']
end

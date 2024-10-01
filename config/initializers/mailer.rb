Rails.application.configure do
  config.action_mailer.postmark_settings = { api_token: ENV['POSTMARK_API_TOKEN'] }
  config.action_mailer.delivery_method = :postmark if Rails.env.production?
  config.action_mailer.delivery_method = :letter_opener if Rails.env.development?
  config.action_mailer.delivery_method = :test if Rails.env.test?

  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_caching = false
  config.action_mailer.default_url_options = { host: ENV['HOST'] }
  config.action_mailer.asset_host = ENV['URL_HOST']
  config.action_mailer.default_options = { from: ENV['DEFAULT_EMAIL'] }
end
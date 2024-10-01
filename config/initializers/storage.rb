Cloudinary.config_from_url(ENV['CLOUDINARY_URL'])

Rails.application.configure do
  config.active_storage.service = :local if Rails.env.development?
  config.active_storage.service = :test if Rails.env.test?
  config.active_storage.service = :cloudinary if Rails.env.production?
end
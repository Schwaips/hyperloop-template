# frozen_string_literal: true

if Rails.env.development?
  Rails.application.config.after_initialize do
    Bullet.enable        = true
    Bullet.alert         = false
    Bullet.bullet_logger = false
    Bullet.console       = false
    Bullet.rails_logger  = true
    Bullet.add_footer    = true
  end
end

if Rails.env.test?
  Rails.application.config.after_initialize do
    Bullet.enable = true
    Bullet.bullet_logger = true
    Bullet.raise = true # raise an error if n+1 query occurs
  end
end

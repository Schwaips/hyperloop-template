# frozen_string_literal: true

if Rails.env.development?
  Rails.application.config.view_component.generate.preview = true
  Rails.application.config.view_component.default_preview_layout = 'lookbook'
end

if Rails.env.test? || Rails.env.development?
  Rails.application.config.view_component.preview_paths << "#{Rails.root}/app/components/previews"
end
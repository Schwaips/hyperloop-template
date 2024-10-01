# frozen_string_literal: true

require 'simplecov'
require 'simplecov-cobertura'

SimpleCov.start 'rails' do
  formatter SimpleCov::Formatter::MultiFormatter.new([
                                                       SimpleCov::Formatter::HTMLFormatter,
                                                       SimpleCov::Formatter::CoberturaFormatter
                                                     ])
  add_filter '/jobs/application_job.rb'
  add_filter '/helpers/application_helper.rb'
  add_filter '/mailers/application_mailer.rb'
  add_filter '/models/application_record.rb'
  add_filter '/channels/application_cable/channel.rb'
  add_filter '/channels/application_cable/connection.rb'
  add_filter '/controllers/auth'
  add_filter '/helpers/svg_helper.rb'
  add_filter '/components/typographie/typographie_component.rb'
  add_filter '/components/form/input/input_component.rb'
  add_filter '/policies/application_policy.rb'
  add_filter '/admin'
end

# frozen_string_literal: true

return if Rails.env.production?

print 'Cleaning database...'
DatabaseCleaner.clean_with(:truncation)
puts ' ✅'

print 'Creating dev users...'
FactoryBot.create(:user, :admin, :confirmed, email: 'admin@example.com')
puts ' ✅'

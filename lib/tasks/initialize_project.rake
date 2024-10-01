# frozen_string_literal: true

# lib/tasks/initialize_project.rake

namespace :project do
  task initialize: :environment do
    require 'find'

    new_project_name = Rails.root.basename.to_s
    old_texts = %w[hyperloop Hyperloop HYPERLOOP]
    new_project_names = [new_project_name, new_project_name.camelize, new_project_name.upcase]

    Find.find(Rails.root) do |path|
      next unless File.file?(path)

      # Read file content
      content = File.read(path)

      # Replace old text with new text
      new_content = content.gsub(old_texts[0], new_project_names[0])
                           .gsub(old_texts[1], new_project_names[1])
                           .gsub(old_texts[2], new_project_names[2])

      # Write the new content back to the file if any replacements were made
      File.write(path, new_content) if content != new_content
    end

    File.delete(Rails.root.join('lib/tasks/initialize_project.rake').to_s)

    puts '==== Project initialized ===='
    puts ''
    puts 'Now you can run the following commands:'
    puts ''
    puts '  bundle install'
    puts '  yarn install'
    puts '  rails db:create db:migrate db:seed'
    puts ''
  end
end

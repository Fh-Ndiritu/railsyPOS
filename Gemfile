# Core Rails and dependencies
source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8.0.1"
gem "propshaft" # Modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "sqlite3", ">= 2.1" # Use sqlite3 as the database for Active Record
gem "puma", ">= 5.0" # Use the Puma web server [https://github.com/puma/puma]
gem "importmap-rails" # Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "turbo-rails" # Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "stimulus-rails" # Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "tailwindcss-rails" # Use Tailwind CSS [https://github.com/rails/tailwindcss-rails]
gem "jbuilder" # Build JSON APIs with ease [https://github.com/rails/jbuilder]

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[windows jruby]

# Database-backed adapters for Rails.cache, Active Job, and Action Cable
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Performance and deployment
gem "bootsnap", require: false # Reduces boot times through caching; required in config/boot.rb
gem "kamal", require: false # Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem "thruster", require: false # Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]

# Authentication and forms
gem "devise" # Flexible authentication solution
gem "simple_form-tailwind" # Tailwind CSS integration for Simple Form
gem "simple_form", github: "heartcombo/simple_form" # Simple form builder

# Utilities
gem "acts_as_list" # Manage ordered lists in ActiveRecord
gem "view_component" # Framework for creating reusable, testable, & encapsulated view components
gem "factory_bot_rails" # Test data generation
gem "faker", "~> 3.3" # Generate fake data

# Development and testing gems
group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude" # Debugging tool
  gem "brakeman", require: false # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "rubocop-rails-omakase", require: false # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-discourse", "~> 3.0"
  gem "rubocop-packaging"
  gem "rubocop-performance"
  gem "rubocop-rails-accessibility"
  gem "rubocop-rspec"
  gem "rubocop-shopify"
  gem "rspec-rails", "~> 6.0" # Testing framework
  gem "dotenv-rails" # Load environment variables from .env
  gem "pry-byebug" # Debugging with Pry
  gem "pry-rails" # Integrate Pry with Rails console
  gem "erb_lint" # Lint ERB files
  gem "rubocop", "~> 1.54", ">= 1.54.2" # Ruby static code analyzer
  gem "rubocop-rails" # Rails-specific Rubocop rules
end

group :development do
  gem "web-console" # Interactive console for debugging
  gem "bullet" # Detect N+1 queries and unused eager loading
  gem "rails_live_reload" # Auto-reload app when changes are applied
end

group :test do
  gem "capybara" # Integration testing
  gem "shoulda-matchers", "~> 6.1" # Test matchers for Rails
  gem "selenium-webdriver" # Browser automation for system tests
end

# Optional gems (commented out)
# gem "bcrypt", "~> 3.1.7" # Use Active Model has_secure_password
# gem "image_processing", "~> 1.2" # Use Active Storage variants
# gem "redcarpet", "~> 3.6" # Markdown processing
# gem "wicked_pdf" # PDF generation

gem "image_processing", "~> 1.14"

gem "prawn", "~> 2.5"

gem "prawn-table", "~> 0.2.2"

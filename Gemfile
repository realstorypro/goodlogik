# frozen_string_literal: true

source 'https://rubygems.org'

ruby '2.6.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'dalli'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.2.0'
gem 'slim-rails'

gem 'uglifier', '>= 1.3.0'

gem 'contentful'
gem 'dc_ui', github: 'leonid-io/dc-ui', branch: 'master'
gem 'httparty'
gem 'meta-tags'
gem 'numbers_and_words'
gem 'rack-cors', require: 'rack/cors'
gem 'redcarpet'
gem 'rich_text_renderer'
gem 'sass-rails', '~> 5.0'
gem 'webpacker'

gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'turbolinks', '~> 5'

gem 'devise'
gem 'simple_form'

# Phone Tools
gem 'countries'
gem 'iso_country_codes'
gem 'phonelib'
gem 'twilio-ruby'

gem 'heroku-deflater', group: :production

gem 'field_test'
gem 'sitemap_generator'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
  gem 'rb-readline'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

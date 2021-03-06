# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_content'
  s.version     = '3.0.0-beta'
  s.summary     = 'Arranges content as pages and partials'
  s.description = 'Arranges content as pages and partials with summernote.js as a rich text editor'
  s.required_ruby_version = '>= 2.0.0'

  s.author    = 'Dom Stockdale'
  s.email     = 'dom.stockdale@gmail.com'
  s.homepage  = 'http://www.nonsens.us'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_api', '~> 3.0.0'
  s.add_dependency 'spree_backend', '~> 3.0.0'
  s.add_dependency 'spree_core', '~> 3.0.0'
  s.add_dependency 'spree_frontend', '~> 3.0.0'

  s.add_development_dependency 'shoulda-matchers', '~> 2.8'
  s.add_development_dependency 'capybara', '~> 2.4'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.5'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 3.1'
  s.add_development_dependency 'sass-rails', '~> 5.0.0.beta1'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end

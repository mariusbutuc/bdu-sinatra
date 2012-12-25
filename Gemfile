source :rubygems

gem 'sinatra'
gem 'data_mapper'
gem 'haml'
gem 'shotgun'
gem 'thin'
gem 'ruby-progressbar'
gem 'httparty'


group :production do
  gem 'pg'
  gem 'dm-postgres-adapter'
end

group :development, :test do
  gem 'sqlite3'
  gem 'dm-sqlite-adapter'
  gem 'rake'
end

group :development do
  gem 'tux'
  gem 'travis'
  gem 'travis-lint'
end

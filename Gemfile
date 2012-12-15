source :rubygems

gem 'sinatra'
gem 'data_mapper'
gem 'haml'
gem 'shotgun'
gem 'thin'

group :production, :test do
  gem 'pg'
  gem 'dm-postgres-adapter'
end

group :development do
  gem 'sqlite3'
  gem 'dm-sqlite-adapter'
  gem 'tux'
end

group :test do
  gem 'rake'
end

desc "Hey Travis CI, Marius greets you for the need to write Rake tasks!"
task :default => 'db:seed'

namespace :db do
  desc 'Load the seed data from seeds.rb'
  task :seed do
    ruby "seeds.rb"
  end
end
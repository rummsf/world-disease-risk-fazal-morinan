require 'active_record'

task :environment do
  ENV["ACTIVE_RECORD_ENV"] ||= "development"
  require_relative './config/environment'
end

include ActiveRecord::Tasks

DatabaseTasks.db_dir = 'db'
DatabaseTasks.migrations_paths = 'db/migrate'

load 'active_record/railties/databases.rake'

task :console => :environment do
  Pry.start
end

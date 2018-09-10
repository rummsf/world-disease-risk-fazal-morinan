require 'bundler/setup'
require 'sqlite3'
require 'json'
require 'pry'

Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: "db/development.sql")

Dir[File.join(File.dirname(__FILE__), "../app/*", "*.rb")].each {|f| require f}

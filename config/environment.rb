ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])
configure :development do
    set :database, 'sqlite3:db/database.db'
  end
# this code block with set up a connection to our database 
# this sets up a connection to the sqlite3 database named database.db in this app 
require './app'

#rake gives us the ability to quickly make files and set up automated tasks. 
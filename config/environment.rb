require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'


require 'bundler/setup'
Bundler.require


# put the code to connect to the database here
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/Monster_database.db.sqlite"
)
ActiveRecord::Base.logger = Logger.new(STDOUT)

require_relative "../app/models/job.rb"
# require_relative "../lib/organize.rb"
# require_relative "lib/sector.rb"
# require_relative "db/seeds.rb"
# require_relative "Rakefile"




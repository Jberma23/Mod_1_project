require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'
require 'bundler/setup'
require_relative "../app/models/job.rb"
require_relative "../app/models/organization.rb"
require_relative "../app/models/sector.rb"
require_relative "../app/models/department.rb"
require_relative "../db/seeds.rb"
Bundler.require

# put the code to connect to the database here
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/Monster_database.db.sqlite"
  )
ActiveRecord::Base.logger = nil






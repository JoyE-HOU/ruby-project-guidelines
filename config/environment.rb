require 'bundler'
require 'tty-prompt'
require 'pry'
require 'colorize' # run 'gem install colorize' https://github.com/fazibear/colorize

Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
ActiveRecord::Base.logger = nil
require_all 'lib'

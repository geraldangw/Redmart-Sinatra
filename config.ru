require 'rubygems'
require 'bundler'
Bundler.require

require './models/users'
require './models/products'
require './models/purchases'
require './models/brands'
require './models/categories'

require './app'
use Rack::MethodOverride
run RedmartSinatraApp

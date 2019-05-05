require 'sinatra'
require 'sinatra/contrib'
require_relative './controllers/recipies_controller'

use Rack::MethodOverride

run RecipiesController

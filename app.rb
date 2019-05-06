require 'sinatra'
require 'sinatra/contrib'
require 'pg'
require_relative './models/recipie'
require_relative './controllers/recipies_controller'
require_relative './controllers/categories_controller'
require_relative './controllers/tutorials_controller'



class App < Sinatra::Base
use Rack::MethodOverride
use CategoriesController
use RecipiesController
use TutorialsController

get "/" do

  erb :'categories/index'
  end

end

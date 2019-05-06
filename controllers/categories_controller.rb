class CategoriesController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views")}

  configure :development do
    register Sinatra::Reloader
  end


  #index
  get "/categories" do

      erb :'categories/index'
  end



end

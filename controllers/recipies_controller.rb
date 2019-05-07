class RecipiesController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views")}

  configure :development do
    register Sinatra::Reloader
  end


  #index
  get "/recipies" do
    @title = "Happy baking!"

     @recipies = Recipie.all

    erb :'recipies/index'
  end

  #new
  get "/recipies/new" do

    @recipie = Recipie.new

    erb :'recipies/new'
  end

  #create
  post "/recipies" do

    recipie = Recipie.new

    recipie.title = params[:title]
    recipie.image = params[:image]
    recipie.ingredients = params[:ingredients]
    recipie.method = params[:method]

    recipie.save

    redirect "/recipies"

  end

  #show
  get "/recipies/:id" do
    id = params[:id].to_i

    @recipie = Recipie.find(id)

    erb :'recipies/show'
  end

  #edit
  get "/recipies/:id/edit" do
    id = params[:id].to_i

    @recipie = Recipie.find(id)

    erb :'recipies/edit'
  end

  #update
  put "/recipies/:id" do
    id = params[:id].to_i

    recipie = Recipie.find(id)

    recipie.title = params[:title]
    recipie.image = params[:image]
    recipie.ingredients = params[:ingredients]
    recipie.method = params[:method]

    recipie.save


    redirect "/recipies"
  end

  #delete
  delete "/recipies/:id" do
    id = params[:id].to_i

    Recipie.destroy(id)

    redirect "/recipies"
  end




end

class RecipiesController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views")}

  configure :development do
    register Sinatra::Reloader
  end

  $recipies = [{
    id: 0,
    title: "Recipie 1",
    image: "https://picsum.photos/id/835/200",
    ingredients: "List of ingredients",
    method: "Cooking instructions"
  },
  {
    id: 1,
    title: "Recipie 2",
    image: "https://picsum.photos/id/292/200",
    ingredients: "List of ingredients",
    method: "Cooking instructions"
  },
  {
    id: 3,
    title: "Recipie 3",
    image: "https://picsum.photos/id/488/200",
    ingredients: "List of ingredients",
    method: "Cooking instructions"
  }]




  #index
  get "/" do
    @title = "Happy baking!"

     @recipies = $recipies

    erb :'recipies/index'
  end

  #new
  get "/new" do
    "new page"
  end

  #create
  post "/" do
    "create new recipie"
  end

  #show
  get "/:id" do
    "show recipie with id "
  end

  #edit
  get "/:id/edit" do
    "edit this recipie"
  end

  #update
  put "/:id" do
    "update recipie"
  end

  #delete
  delete "/:id" do
    "delete this recipie"
  end




end

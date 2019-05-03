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
    id: 2,
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

    @recipie = {
      id: "",
      title: "",
      image: "",
      ingredients: "",
      method: ""
    }

    erb :'recipies/new'
  end

  #create
  post "/" do
    new_recipie = {
      id: $recipies.length,
      title: params[:title],
      image: params[:image],
      ingredients: params[:ingredients],
      method: params[:method]
    }

    $recipies.push(new_recipie)

    redirect "/"

  end

  #show
  get "/:id" do
    id = params[:id].to_i

    @recipie = $recipies[id]

    erb :'recipies/show'
  end

  #edit
  get "/:id/edit" do
    id = params[:id].to_i

    @recipie = $recipies[id]

    erb :'recipies/edit'
  end

  #update
  put "/:id" do
    id = params[:id].to_i

    recipie = $recipies[id]

    recipie[:title] = params[:title]
    recipie[:image] = params[:image]
    recipie[:ingredients] = params[:ingredients]
    recipie[:method] = params[:method]

    $recipies[id] = recipie


    redirect "/"
  end

  #delete
  delete "/:id" do
    id = params[:id].to_i

    $recipies.delete_at(id)

    redirect "/"
  end




end

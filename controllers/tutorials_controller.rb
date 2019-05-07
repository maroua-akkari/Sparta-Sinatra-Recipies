class TutorialsController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views")}

  configure :development do
    register Sinatra::Reloader
  end


  #index
  get "/tutorials" do

      erb :'tutorials/index'
  end

  #new
  get "/tutorials/new" do

    # @recipie = Recipie.new

    erb :'tutorials/new'
  end

  #create
  post "/tutorials" do

    # recipie = Recipie.new

    # recipie.title = params[:title]
    # recipie.image = params[:image]
    # recipie.ingredients = params[:ingredients]
    # recipie.method = params[:method]
    #
    # recipie.save

    redirect "/tutorials"

  end

  #show
  get "/tutorials/:id" do
    id = params[:id].to_i

    # @recipie = Recipie.find(id)

    erb :'tutorials/show'
  end

  #edit
  get "/tutorials/edit" do
    # id = params[:id].to_i

    # @recipie = Recipie.find(id)

    erb :'tutorials/edit'
  end

  #update
  put "/tutorials/:id" do
    id = params[:id].to_i

    # recipie = Recipie.find(id)

    # recipie.title = params[:title]
    # recipie.image = params[:image]
    # recipie.ingredients = params[:ingredients]
    # recipie.method = params[:method]
    #
    # recipie.save


    redirect "/tutorials"
  end

  #delete
  delete "/tutorials/:id" do
    id = params[:id].to_i

    # Recipie.destroy(id)

    redirect "/tutorials"
  end




end

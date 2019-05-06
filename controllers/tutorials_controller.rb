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



end

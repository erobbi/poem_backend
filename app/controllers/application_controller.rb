class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "hello world" }.to_json
  end

  get "/poems" do
    poems = Poem.all
    poems.to_json
  end
  
end

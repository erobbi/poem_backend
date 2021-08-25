require 'pry'

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

  get "/poems/:id" do
    poem = Poem.find(params[:id])
    poem.content = poem.content.split(/\\n/)
    poem.to_json
  end

  get "/array" do
    array = Array(0..9)
    array.to_json
  end

  get "/authors" do
    authors = Author.all
    authors.to_json

  end

  post "/newpoem" do
    poem = Poem.create(author_id: Author.last.id, title: params[:title],content: params[:content])
    poem.to_json
  end
  
end

## listenrs..there is a form listener, ASCII characters....enter has a [char13]...replace [char13] with '\\n'
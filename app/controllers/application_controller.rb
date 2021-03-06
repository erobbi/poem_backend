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
    poem.content = poem.content.split(/\n/)
    poem.to_json
  end

  get "/poems/:id/like/" do
    poem = Poem.find(params[:id])
    likes = poem.likes + 1
    poem.update(likes: likes)
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
    poem = Poem.create(likes: 0, author_id: params[:author_id], title: params[:title],content: params[:content])
    poem.to_json
  end
  
end


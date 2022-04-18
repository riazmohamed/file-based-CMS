require "sinatra"
require "sinatra/reloader" if development?
require "sinatra/content_for"
require "tilt/erubis"

get '/' do
  "Getting started."
  @content = Dir.glob("data/*.*")

  erb :home
end

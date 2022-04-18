require "sinatra"
require "sinatra/reloader" if development?
require "sinatra/content_for"
require "tilt/erubis"

get '/' do
  "Getting started."
  files = Dir.glob("data/*.*")
  @file_names = files.map { |file| File.basename(file) }.sort

  erb :index
end

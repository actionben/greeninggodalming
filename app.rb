require 'rubygems'
require 'sinatra'
require 'haml'
require 'maruku'

before do
  if request.host != 'www.greeninggodalming.org.uk'
    redirect "http://www.greeninggodalming.org.uk"+request.fullpath, 301
  end
end

get '/' do
  haml :index
end

get '/stylesheets/main.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :'stylesheets/main'
end

get '*.*' do
  redirect "#{params[:splat].first}", 301
end

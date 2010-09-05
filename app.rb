require 'rubygems'
require 'sinatra'
require 'haml'
require 'maruku'

get '/' do
  haml :index
end

get '/challenges' do
  haml :challenges
end

get '/previous_events' do
  haml :previous_events
end

get '/stylesheets/main.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :'stylesheets/main'
end

get '/wp-content/uploads/2010/04/challenge_card.pdf' do
  redirect "/challenge_card.pdf", 301
end

get '*.*' do
  redirect "#{params[:splat].first}", 301
end

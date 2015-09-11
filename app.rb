require 'sinatra'
require 'json'

# set :public_folder, 'public'

APIKEY = ENV['githubToken']

get '/' do
  send_file 'public/index.html'
end

get '/key' do
  { access_token: APIKEY }.to_json
end
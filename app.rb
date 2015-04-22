require('sinatra')
require('sinatra/reloader')
require('./lib/beats?')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/winner') do
  @winner = params.fetch('player1').beats?(params.fetch('player2'))
  erb(:winner)
end

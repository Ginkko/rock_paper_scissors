require('sinatra')
require('sinatra/reloader')
require('./lib/beats?')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/winner') do
  @winner = params.fetch('winner').beats?(opponent)
  erb(:winner)
end

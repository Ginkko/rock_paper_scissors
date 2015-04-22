require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/winner') do
  @winner = params.fetch('winner').beats?(opponent)
  erb(:score)
end

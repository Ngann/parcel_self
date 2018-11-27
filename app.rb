require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')
require('pry')

get('/') do
  erb(:input)
end

get('/output') do
  @length = params.fetch("length").to_i
  @width = params.fetch("width").to_i
  @height = params.fetch("height").to_i
  @weight = params.fetch("weight").to_i
  @shipping = params.fetch("selection")
  package = Parcel.new(@length, @width, @height, @weight, @shipping)
  @package_volume = package.volume()
  @total_cost = package.cost_to_ship()
  erb(:output)
end

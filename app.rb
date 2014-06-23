require 'sinatra'
require 'pony'

if settings.environment == :production
  # if we're on heroku, use the sendgrid settings
  require './production_pony_options'
else
  # otherwise, use our normal email account
  require './development_pony_options'
end

get '/' do
  erb :index
end

post '/' do
  @name  = params[:name]
  @email = params[:email]

  Pony.mail(:to=>@email,
  			:subject=>'sandwiches.',
  			:body=> erb(:email, :layout=>false))

  erb :thanks
end
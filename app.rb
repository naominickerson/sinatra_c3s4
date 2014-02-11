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
  @first_name  = params[:first_name]
  @second_name = params[:second_name]
  @email       = params[:email]

  # add email sending code here

  erb :thanks
end
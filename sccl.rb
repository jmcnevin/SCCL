require 'rubygems'
require 'vendor/sinatra/lib/sinatra.rb'
require 'vendor/pony/lib/pony.rb'
require 'erb'

get '/' do
  erb :index
end

get '/contact' do
  erb :contact
end

post '/contact' do
  # order@attorneysforcourt.com
  Pony.mail :to => 'jmcnevin@gmail.com',
    :from => params[:email],
    :subject => 'Contact request from SmallClaimsCourtLawyer.com',
    :body => erb(:email)
  erb :success
end

get '/about' do
  erb :about
end

get '/payments' do
  erb :payments
end
require 'rubygems'
require 'vendor/sinatra/lib/sinatra.rb'
require 'vendor/pony/lib/pony.rb'
require 'erb'

CONTACT_FORM_EMAIL = 'jmcnevin@gmail.com'
CONTACT_FORM_SUBJECT = 'Contact request from SmallClaimsCourtLawyer.com'

get '/' do
  erb :index
end

get '/contact' do
  @page_title = 'Contact'
  erb :contact
end

post '/contact' do
  @page_title = 'Contact'
  Pony.mail :to => CONTACT_FORM_EMAIL,
    :from => params[:email],
    :subject => CONTACT_FORM_SUBJECT,
    :body => erb(:email, :layout => false)
  erb :success
end

get '/about' do
  @page_title = 'About'
  erb :about
end

get '/payments' do
  @page_title = 'Get Started / Payments'
  erb :payments
end
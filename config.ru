# This is the rack initialization file for the sccl application.  Can't touch this.

require 'rubygems'
require 'vendor/sinatra/lib/sinatra.rb'

Sinatra::Default.set(:run, false)
Sinatra::Default.set(:environment, :production)

require 'sccl.rb'
run Sinatra::Application
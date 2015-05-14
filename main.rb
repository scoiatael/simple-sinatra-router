require 'active_support'
require 'active_support/core_ext'
require 'sinatra'
require 'sinatra/namespace'
require_relative 'lib/router'
require_relative 'lib/controller'

get '/', to: 'controller#index'

get'/some_route', to: 'controller#some_route'

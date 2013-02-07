class ApplicationController < ActionController::Base
  protect_from_forgery
  layout "bobcat"
  require 'authpds'
  include Authpds::Controllers::AuthpdsController
end

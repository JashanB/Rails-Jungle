class Admin::DashboardController < ApplicationController
  # http_basic_authenticate_with = {
  #   :username => ENV['username'], 
  #   :password => ENV['password']
  # }
  http_basic_authenticate_with :username => ENV['username'], :password => ENV['password']

  def show
  end
end

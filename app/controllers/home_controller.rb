class HomeController < ApplicationController
  def index
    user = User.find(9)
    user.add_role :admin # sets a global role
    user.has_role? :admin
  end
end
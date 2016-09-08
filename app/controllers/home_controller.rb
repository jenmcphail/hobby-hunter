class HomeController < ApplicationController
  def home
    render text: "hello from Rails!"
  end
end
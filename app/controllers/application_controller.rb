class ApplicationController < ActionController::Base
  #define hello function from the routes.rb file
  def hello
    render plain: "hello world"
  end
  
end

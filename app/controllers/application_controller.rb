class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
<<<<<<< HEAD
  protect_from_forgery with: :null_session

=======
  protect_from_forgery with: :exception
  include SessionsHelper
>>>>>>> dbea1946f855c7f4a62bdc5e8a2ecf7e99e5cb4a

  def hello
    render text: "hello, world!"
  end


end

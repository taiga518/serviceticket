class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper


  def question_new
    render "layouts/question_new"
  end



end

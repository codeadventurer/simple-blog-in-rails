class WelcomeController < ApplicationController
  before_action :set_values, only: [:home]

  def home
    # instant variable @message
    @message = "Welcome to my page"

    # redirect user after somethig happened like post.save
    some_value = true
    if some_value
      redirect_to root_url, flash: { success: "Page redirect was successful" }
    else
      redirect_to welcome_features_url 
      # OR welcome_features_path 
    end 
  end

  def features
  end

  def about
  end

  def contact
  end

  private

  def set_values
    # is called before any action in this controller
    @name = "Anna"
  end
end

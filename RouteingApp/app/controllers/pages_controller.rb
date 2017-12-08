class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
  end

  def something
    @something = params[:something]
    @another_one = params[:another_one]
    @yet_another = params[:yet_another]
  end 
end

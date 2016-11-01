class StaticPagesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def import
    #@import = false;
    #if request.post?
    @StaticPage =  StaticPage.import(params[:file])
    respond_to do |format|
      format.html 
      format.js { render nothing: true } 
    end

  end

  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def maps  
  end

  def configuracionMapa
  end

  def configuracionEstadistica
  end

end

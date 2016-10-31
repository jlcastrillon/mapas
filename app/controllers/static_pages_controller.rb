class StaticPagesController < ApplicationController
  respond_to :html, :json
  def import
    #@import = false;
    #if request.post?
    @StaticPage =  StaticPage.import(params[:file])
    respond_to do |format|
      format.html
      format.json
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

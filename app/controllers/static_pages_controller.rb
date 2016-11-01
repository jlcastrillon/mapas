class StaticPagesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def import
    #@import = false;
    #if request.post?
    @document =  Document.import(params[:_:id___fileinput__])
    respond_to do |format|
      format.js
      format.html { redirect_to :back }
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

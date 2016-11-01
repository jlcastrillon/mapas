class StaticPagesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  respond_to :html,:json
  def import
    #@import = false;
    #if request.post?
    @import =  StaticPage.import(params[:file])
    respond_to do |format|
      format.html{ render :nothing => true, :status => 201 }
      format.js { redirect_to  '/static_pages/import' }
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

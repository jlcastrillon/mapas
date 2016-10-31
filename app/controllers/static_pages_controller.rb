class StaticPagesController < ApplicationController
  def import
    #@import = false;
    #if request.post?
    @StaticPage =  StaticPage.import(params[:file])
    if @StaticPage 
       flash.now[:notice] = "Import Successful"
       format.html { render "maps/import", :layout => false  } 
    else
       flash[:danger] = "Error Encountered"
       redirect_to @StaticPage
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

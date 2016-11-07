class StaticPagesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_filter :maps
  
  @salida = 'hola'

  def import
    #@import = false;
    #if request.post?
    @document =  StaticPage.import(params[:file])
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
    
    if(cookies[:file_name])
      logger.debug ("procesando cookie " + cookies[:file_name])
      @salida = StaticPage.open_spreadsheet(cookies[:file_name])
      logger.debug @salida 
    end
  end

  def show
    
    if(cookies[:file_name])
      logger.debug ("procesando cookie " + cookies[:file_name])
      @salida = StaticPage.open_spreadsheet(cookies[:file_name])
      logger.debug @salida 
    end
    respond_to do |format|
      format.js
    end
  end

  def configuracionMapa

  end

  def configuracionEstadistica
  end

end

class ConversionsController < ApplicationController

  def new
    @conversion ||= Conversion.new
  end

  def create
    @conversion = Conversion.new(conversion_params)
    @conversion.slim = Haml2Slim::Converter.new(@conversion.haml).to_s
    flash.now[:notice] = 'Successfully converted.'
    render action: 'new'
  end

  private
    def conversion_params
      params.require(:conversion).permit(:haml, :slim)
    end
end

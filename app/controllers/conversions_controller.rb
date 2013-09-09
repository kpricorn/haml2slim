class ConversionsController < ApplicationController

  def new
    @conversion ||= Conversion.new
  end

  def create
    @conversion = Conversion.new(conversion_params)
    render action: 'new'
  end

  private
    def conversion_params
      params.require(:conversion).permit(:haml)
    end
end

class Conversion
  include ActiveModel::Model

  attr_accessor :haml, :slim

  def slim
    Haml2Slim::Converter.new(@haml || '')
  end
end

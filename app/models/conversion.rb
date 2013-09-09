class Conversion
  include ActiveModel::Model

  attr_accessor :haml, :slim

  def slim
    @slim ||= Haml2Slim::Converter.new(@haml).to_s
  end
end

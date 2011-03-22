class CatalogController < ApplicationController
  def index
  	@documents = Document.all
  end

end

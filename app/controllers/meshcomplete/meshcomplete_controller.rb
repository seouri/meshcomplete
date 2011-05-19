class MeshcompleteController < ApplicationController
  def search
    items = Synonym.search(params[:term])
    render :json => items
  end
end

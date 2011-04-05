class MeshcompleteController < ApplicationController
  def search
    #items = MeshEntryTerm.autocomplete(params[:term])
    items = {:id => 1321, :label => "Autistic Disorder", :value => "Autistic Disorder", :entries => []}
    render :json => items
  end
end
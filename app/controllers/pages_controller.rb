class PagesController < SitesController
  
  def show
    @page = Page.find(params[:id])
  end
  
end
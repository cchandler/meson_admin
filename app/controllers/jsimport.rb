class Jsimport < Application
  provides :js

  def index
    
    render
  end
  
  def show
    only_provides :js
    @key = params[:id]
    #Lookup API key that just came in
    #Establish variables
    #Render Javascript
    render
  end
end

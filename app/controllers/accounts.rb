class Accounts < Application

  def index
    render
  end

  def new
    @account = Account.new
    render
  end
  
  def create
    @account = Account.new(params[:account])
    p @account.inspect
    
    if @account.save
      redirect url(:accounts)
    else
      render :action => index
    end
    
  end
end

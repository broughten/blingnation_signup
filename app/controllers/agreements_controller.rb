class AgreementsController < ApplicationController
  
  # GET /agreements
  def index
    @agreements = Agreement.find(:all)
  end

  # GET /agreements/new
  def new
    @agreement = Agreement.new
  end

  # POST /agreements
  def create
    @agreement = Agreement.new(params[:agreement])
    logger.debug("HI JC!!! do we get this far?")
    respond_to do |format|
      if (@agreement.save)
        flash[:notice] = 'Agreement was successfully created.'
        format.html { redirect_to agreements_path }
      else
        format.html do
          flash[:error] = 'Agreement was invalid. Please try again.'
          render :action => "new"
        end
      end
    end

  end

end

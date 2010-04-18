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
    respond_to do |format|
      if (@agreement.save)
        AgreementMailer.deliver_agreement_notification(@agreement)
        format.html { redirect_to @agreement }
      else
        format.html do
          flash[:error] = 'Agreement was invalid. Please try again.'
          render :action => "new"
        end
      end
    end

  end

end

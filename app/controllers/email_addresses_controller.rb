class EmailAddressesController < ApplicationController
  # GET /email_addresses
  # GET /email_addresses.xml
  def index
    @email_addresses = EmailAddress.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @email_addresses }
    end
  end

  # GET /email_addresses/new
  # GET /email_addresses/new.xml
  def new
    @email_address = EmailAddress.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @email_address }
    end
  end

  # POST /email_addresses
  # POST /email_addresses.xml
  def create
    @email_address = EmailAddress.new(params[:email_address])

    respond_to do |format|
      if @email_address.save
        flash[:notice] = 'EmailAddress was successfully created.'
        format.html { redirect_to(email_addresses_url) }
        format.xml  { render :xml => @email_address, :status => :created, :location => @email_address }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @email_address.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /email_addresses/1
  # DELETE /email_addresses/1.xml
  def destroy
    @email_address = EmailAddress.find(params[:id])
    @email_address.destroy

    respond_to do |format|
      format.html { redirect_to(email_addresses_url) }
      format.xml  { head :ok }
    end
  end
end

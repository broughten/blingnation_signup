class MerchantsController < ApplicationController
  before_filter :authenticate

  # GET /merchants
  # GET /merchants.xml
  def index
    @merchants = Merchant.find(:all, :order => "bank_id")
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @merchants }
    end
  end

  # GET /merchants/1
  # GET /merchants/1.xml
  def show
    @merchant = Merchant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @merchant }
    end
  end

  # GET /merchants/new
  # GET /merchants/new.xml
  def new
    @banks = Bank.all
    @merchant = Merchant.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @merchant }
    end
  end

  # GET /merchants/1/edit
  def edit
    @banks = Bank.all
    @merchant = Merchant.find(params[:id])
  end

  # POST /merchants
  # POST /merchants.xml
  def create
    @merchant = Merchant.new(params[:merchant])

    respond_to do |format|
      if @merchant.save
        flash[:notice] = 'Merchant was successfully created.'
        format.html { redirect_to(@merchant) }
        format.xml  { render :xml => @merchant, :status => :created, :location => @merchant }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @merchant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /merchants/1
  # PUT /merchants/1.xml
  def update
    @merchant = Merchant.find(params[:id])

    respond_to do |format|
      if @merchant.update_attributes(params[:merchant])
        flash[:notice] = 'Merchant was successfully updated.'
        format.html { redirect_to(@merchant) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @merchant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /merchants/1
  # DELETE /merchants/1.xml
  def destroy
    @merchant = Merchant.find(params[:id])
    @merchant.destroy

    respond_to do |format|
      format.html { redirect_to(merchants_url) }
      format.xml  { head :ok }
    end
  end
end

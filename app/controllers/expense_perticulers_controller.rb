class ExpensePerticulersController < ApplicationController
  # GET /expense_perticulers
  # GET /expense_perticulers.xml
  def index
    @expense_perticulers = ExpensePerticuler.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @expense_perticulers }
    end
  end

  # GET /expense_perticulers/1
  # GET /expense_perticulers/1.xml
  def show
    @expense_perticuler = ExpensePerticuler.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @expense_perticuler }
    end
  end

  # GET /expense_perticulers/new
  # GET /expense_perticulers/new.xml
  def new
    @expense_perticuler = ExpensePerticuler.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @expense_perticuler }
    end
  end

  # GET /expense_perticulers/1/edit
  def edit
    @expense_perticuler = ExpensePerticuler.find(params[:id])
  end

  # POST /expense_perticulers
  # POST /expense_perticulers.xml
  def create
    @expense_perticuler = ExpensePerticuler.new(params[:expense_perticuler])

    respond_to do |format|
      if @expense_perticuler.save
        flash[:notice] = 'ExpensePerticuler was successfully created.'
        format.html { redirect_to(@expense_perticuler) }
        format.xml  { render :xml => @expense_perticuler, :status => :created, :location => @expense_perticuler }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @expense_perticuler.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /expense_perticulers/1
  # PUT /expense_perticulers/1.xml
  def update
    @expense_perticuler = ExpensePerticuler.find(params[:id])

    respond_to do |format|
      if @expense_perticuler.update_attributes(params[:expense_perticuler])
        flash[:notice] = 'ExpensePerticuler was successfully updated.'
        format.html { redirect_to(@expense_perticuler) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @expense_perticuler.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /expense_perticulers/1
  # DELETE /expense_perticulers/1.xml
  def destroy
    @expense_perticuler = ExpensePerticuler.find(params[:id])
    @expense_perticuler.destroy

    respond_to do |format|
      format.html { redirect_to(expense_perticulers_url) }
      format.xml  { head :ok }
    end
  end
end

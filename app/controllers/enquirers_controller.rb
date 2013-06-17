class EnquirersController < ApplicationController
  # GET /enquirers
  # GET /enquirers.json
  def index
    @enquirers = Enquirer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @enquirers }
    end
  end

  # GET /enquirers/1
  # GET /enquirers/1.json
  def show
    @enquirer = Enquirer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @enquirer }
    end
  end

  # GET /enquirers/new
  # GET /enquirers/new.json
  def new
    @enquirer = Enquirer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @enquirer }
    end
  end

  # GET /enquirers/1/edit
  def edit
    @enquirer = Enquirer.find(params[:id])
  end

  # POST /enquirers
  # POST /enquirers.json
  def create
    @enquirer = Enquirer.new(params[:enquirer])

    respond_to do |format|
      if @enquirer.save
        format.html { redirect_to @enquirer, notice: 'Enquirer was successfully created.' }
        format.json { render json: @enquirer, status: :created, location: @enquirer }
      else
        format.html { render action: "new" }
        format.json { render json: @enquirer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /enquirers/1
  # PUT /enquirers/1.json
  def update
    @enquirer = Enquirer.find(params[:id])

    respond_to do |format|
      if @enquirer.update_attributes(params[:enquirer])
        format.html { redirect_to @enquirer, notice: 'Enquirer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @enquirer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enquirers/1
  # DELETE /enquirers/1.json
  def destroy
    @enquirer = Enquirer.find(params[:id])
    @enquirer.destroy

    respond_to do |format|
      format.html { redirect_to enquirers_url }
      format.json { head :no_content }
    end
  end
end

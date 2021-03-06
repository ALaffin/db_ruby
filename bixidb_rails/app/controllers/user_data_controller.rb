class UserDataController < ApplicationController
  # GET /user_data
  # GET /user_data.json
  def index
    @user_data = UserDatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_data }
    end
  end

  # GET /user_data/1
  # GET /user_data/1.json
  def show
    @user_datum = UserDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_datum }
    end
  end

  # GET /user_data/new
  # GET /user_data/new.json
  def new
    @user_datum = UserDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_datum }
    end
  end

  # GET /user_data/1/edit
  def edit
    @user_datum = UserDatum.find(params[:id])
  end

  # POST /user_data
  # POST /user_data.json
  def create
    @user_datum = UserDatum.new(params[:user_datum])

    respond_to do |format|
      if @user_datum.save
        format.html { redirect_to @user_datum, notice: 'User datum was successfully created.' }
        format.json { render json: @user_datum, status: :created, location: @user_datum }
      else
        format.html { render action: "new" }
        format.json { render json: @user_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_data/1
  # PUT /user_data/1.json
  def update
    @user_datum = UserDatum.find(params[:id])

    respond_to do |format|
      if @user_datum.update_attributes(params[:user_datum])
        format.html { redirect_to @user_datum, notice: 'User datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_data/1
  # DELETE /user_data/1.json
  def destroy
    @user_datum = UserDatum.find(params[:id])
    @user_datum.destroy

    respond_to do |format|
      format.html { redirect_to user_data_url }
      format.json { head :no_content }
    end
  end
end

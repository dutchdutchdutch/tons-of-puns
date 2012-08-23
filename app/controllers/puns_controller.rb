class PunsController < ApplicationController
  # GET /puns
  # GET /puns.json
  def index
    @puns = Pun.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @puns }
    end
  end

  # GET /puns/1
  # GET /puns/1.json
  def show
    @pun = Pun.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pun }
    end
  end

  # GET /puns/new
  # GET /puns/new.json
  def new
    @pun = Pun.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pun }
    end
  end

  # GET /puns/1/edit
  def edit
    @pun = Pun.find(params[:id])
  end

  # POST /puns
  # POST /puns.json
  def create
    @pun = Pun.new(params[:pun])

    respond_to do |format|
      if @pun.save
        format.html { redirect_to @pun, notice: 'Pun was successfully created.' }
        format.json { render json: @pun, status: :created, location: @pun }
      else
        format.html { render action: "new" }
        format.json { render json: @pun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /puns/1
  # PUT /puns/1.json
  def update
    @pun = Pun.find(params[:id])

    respond_to do |format|
      if @pun.update_attributes(params[:pun])
        format.html { redirect_to @pun, notice: 'Pun was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puns/1
  # DELETE /puns/1.json
  def destroy
    @pun = Pun.find(params[:id])
    @pun.destroy

    respond_to do |format|
      format.html { redirect_to puns_url }
      format.json { head :no_content }
    end
  end
end

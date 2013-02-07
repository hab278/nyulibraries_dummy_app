class BobcatsController < ApplicationController
  # GET /bobcats
  # GET /bobcats.json
  def index
    @bobcats = Bobcat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bobcats }
    end
  end

  # GET /bobcats/1
  # GET /bobcats/1.json
  def show
    @bobcat = Bobcat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bobcat }
    end
  end

  # GET /bobcats/new
  # GET /bobcats/new.json
  def new
    @bobcat = Bobcat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bobcat }
    end
  end

  # GET /bobcats/1/edit
  def edit
    @bobcat = Bobcat.find(params[:id])
  end

  # POST /bobcats
  # POST /bobcats.json
  def create
    @bobcat = Bobcat.new(params[:bobcat])

    respond_to do |format|
      if @bobcat.save
        format.html { redirect_to @bobcat, notice: 'Bobcat was successfully created.' }
        format.json { render json: @bobcat, status: :created, location: @bobcat }
      else
        format.html { render action: "new" }
        format.json { render json: @bobcat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bobcats/1
  # PUT /bobcats/1.json
  def update
    @bobcat = Bobcat.find(params[:id])

    respond_to do |format|
      if @bobcat.update_attributes(params[:bobcat])
        format.html { redirect_to @bobcat, notice: 'Bobcat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bobcat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bobcats/1
  # DELETE /bobcats/1.json
  def destroy
    @bobcat = Bobcat.find(params[:id])
    @bobcat.destroy

    respond_to do |format|
      format.html { redirect_to bobcats_url }
      format.json { head :no_content }
    end
  end
end

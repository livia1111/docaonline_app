class ExemplarsController < ApplicationController
  # GET /exemplars
  # GET /exemplars.json
  def index
    @exemplars = Exemplar.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exemplars }
    end
  end

  # GET /exemplars/1
  # GET /exemplars/1.json
  def show
    @exemplar = Exemplar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exemplar }
    end
  end

  # GET /exemplars/new
  # GET /exemplars/new.json
  def new
    @exemplar = Exemplar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exemplar }
    end
  end

  # GET /exemplars/1/edit
  def edit
    @exemplar = Exemplar.find(params[:id])
  end

  # POST /exemplars
  # POST /exemplars.json
  def create
    @exemplar = Exemplar.new(params[:exemplar])

    respond_to do |format|
      if @exemplar.save
        format.html { redirect_to @exemplar, notice: 'Exemplar was successfully created.' }
        format.json { render json: @exemplar, status: :created, location: @exemplar }
      else
        format.html { render action: "new" }
        format.json { render json: @exemplar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exemplars/1
  # PUT /exemplars/1.json
  def update
    @exemplar = Exemplar.find(params[:id])

    respond_to do |format|
      if @exemplar.update_attributes(params[:exemplar])
        format.html { redirect_to @exemplar, notice: 'Exemplar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exemplar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exemplars/1
  # DELETE /exemplars/1.json
  def destroy
    @exemplar = Exemplar.find(params[:id])
    @exemplar.destroy

    respond_to do |format|
      format.html { redirect_to exemplars_url }
      format.json { head :no_content }
    end
  end
end

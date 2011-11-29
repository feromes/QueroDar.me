class CoisasController < ApplicationController
  # GET /coisas
  # GET /coisas.json
  def index
    @coisas = Coisa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coisas }
    end
  end

  # GET /coisas/1
  # GET /coisas/1.json
  def show
    @coisa = Coisa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coisa }
    end
  end

  # GET /coisas/new
  # GET /coisas/new.json
  def new
    @coisa = Coisa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coisa }
    end
  end

  # GET /coisas/1/edit
  def edit
    @coisa = Coisa.find(params[:id])
  end

  # POST /coisas
  # POST /coisas.json
  def create
    @coisa = Coisa.new(params[:coisa])

    respond_to do |format|
      if @coisa.save
        format.html { redirect_to @coisa, notice: 'Coisa was successfully created.' }
        format.json { render json: @coisa, status: :created, location: @coisa }
      else
        format.html { render action: "new" }
        format.json { render json: @coisa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /coisas/1
  # PUT /coisas/1.json
  def update
    @coisa = Coisa.find(params[:id])

    respond_to do |format|
      if @coisa.update_attributes(params[:coisa])
        format.html { redirect_to @coisa, notice: 'Coisa was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @coisa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coisas/1
  # DELETE /coisas/1.json
  def destroy
    @coisa = Coisa.find(params[:id])
    @coisa.destroy

    respond_to do |format|
      format.html { redirect_to coisas_url }
      format.json { head :ok }
    end
  end
end

class IncludesDrinksController < ApplicationController
  # GET /includes_drinks
  # GET /includes_drinks.json
  def index
    @includes_drinks = IncludesDrink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @includes_drinks }
    end
  end

  # GET /includes_drinks/1
  # GET /includes_drinks/1.json
  def show
    @includes_drink = IncludesDrink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @includes_drink }
    end
  end

  # GET /includes_drinks/new
  # GET /includes_drinks/new.json
  def new
    @includes_drink = IncludesDrink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @includes_drink }
    end
  end

  # GET /includes_drinks/1/edit
  def edit
    @includes_drink = IncludesDrink.find(params[:id])
  end

  # POST /includes_drinks
  # POST /includes_drinks.json
  def create
    @includes_drink = IncludesDrink.new(params[:includes_drink])

    respond_to do |format|
      if @includes_drink.save
        format.html { redirect_to @includes_drink, notice: 'Includes drink was successfully created.' }
        format.json { render json: @includes_drink, status: :created, location: @includes_drink }
      else
        format.html { render action: "new" }
        format.json { render json: @includes_drink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /includes_drinks/1
  # PUT /includes_drinks/1.json
  def update
    @includes_drink = IncludesDrink.find(params[:id])

    respond_to do |format|
      if @includes_drink.update_attributes(params[:includes_drink])
        format.html { redirect_to @includes_drink, notice: 'Includes drink was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @includes_drink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /includes_drinks/1
  # DELETE /includes_drinks/1.json
  def destroy
    @includes_drink = IncludesDrink.find(params[:id])
    @includes_drink.destroy

    respond_to do |format|
      format.html { redirect_to includes_drinks_url }
      format.json { head :no_content }
    end
  end
end

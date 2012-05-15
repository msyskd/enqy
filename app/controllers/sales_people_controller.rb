class SalesPeopleController < ApplicationController
  # GET /sales_people
  # GET /sales_people.json
  def index
    @sales_people = SalesPerson.all
    @title = "Listing Sales People"

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sales_people }
    end
  end

  # GET /sales_people/1
  # GET /sales_people/1.json
  def show
    @sales_person = SalesPerson.find(params[:id])
    @title= "Showing Sales Person"

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sales_person }
    end
  end

  # GET /sales_people/new
  # GET /sales_people/new.json
  def new
    @sales_person = SalesPerson.new
    @title = "New Sales Person"

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sales_person }
    end
  end

  # GET /sales_people/1/edit
  def edit
    @sales_person = SalesPerson.find(params[:id])
    @title = "Editing Sales Person"

  end

  # POST /sales_people
  # POST /sales_people.json
  def create
    @sales_person = SalesPerson.new(params[:sales_person])
    @title = "New Sales Person"

    respond_to do |format|
      if @sales_person.save
        format.html { redirect_to @sales_person, notice: 'Sales person was successfully created.' }
        format.json { render json: @sales_person, status: :created, location: @sales_person }
      else
        format.html { render action: "new" }
        format.json { render json: @sales_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sales_people/1
  # PUT /sales_people/1.json
  def update
    @sales_person = SalesPerson.find(params[:id])
    @title = "Editing Sales Person"

    respond_to do |format|
      if @sales_person.update_attributes(params[:sales_person])
        format.html { redirect_to @sales_person, notice: 'Sales person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sales_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_people/1
  # DELETE /sales_people/1.json
  def destroy
    @sales_person = SalesPerson.find(params[:id])
    @sales_person.destroy

    respond_to do |format|
      format.html { redirect_to sales_people_url }
      format.json { head :no_content }
    end
  end
end

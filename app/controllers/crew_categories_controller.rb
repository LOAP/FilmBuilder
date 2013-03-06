class CrewCategoriesController < ApplicationController
  # GET /crew_categories
  # GET /crew_categories.json
  def index
    @crew_categories = CrewCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @crew_categories }
    end
  end

  # GET /crew_categories/1
  # GET /crew_categories/1.json
  def show
    @crew_category = CrewCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @crew_category }
    end
  end

  # GET /crew_categories/new
  # GET /crew_categories/new.json
  def new
    @crew_category = CrewCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @crew_category }
    end
  end

  # GET /crew_categories/1/edit
  def edit
    @crew_category = CrewCategory.find(params[:id])
  end

  # POST /crew_categories
  # POST /crew_categories.json
  def create
    @crew_category = CrewCategory.new(params[:crew_category])

    respond_to do |format|
      if @crew_category.save
        format.html { redirect_to @crew_category, notice: 'Crew category was successfully created.' }
        format.json { render json: @crew_category, status: :created, location: @crew_category }
      else
        format.html { render action: "new" }
        format.json { render json: @crew_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /crew_categories/1
  # PUT /crew_categories/1.json
  def update
    @crew_category = CrewCategory.find(params[:id])

    respond_to do |format|
      if @crew_category.update_attributes(params[:crew_category])
        format.html { redirect_to @crew_category, notice: 'Crew category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @crew_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crew_categories/1
  # DELETE /crew_categories/1.json
  def destroy
    @crew_category = CrewCategory.find(params[:id])
    @crew_category.destroy

    respond_to do |format|
      format.html { redirect_to crew_categories_url }
      format.json { head :no_content }
    end
  end
end

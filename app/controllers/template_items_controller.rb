class TemplateItemsController < ApplicationController
  before_action :set_template_item, only: %i[ show edit update destroy ]

  # GET /template_items or /template_items.json
  def index
    @template_items = TemplateItem.all
  end

  # GET /template_items/1 or /template_items/1.json
  def show
  end

  # GET /template_items/new
  def new
    @template = Template.find(params[:template_id])
    @template_item = TemplateItem.new
  end

  # GET /template_items/1/edit
  def edit
  end

  # POST /template_items or /template_items.json
  def create
    @template_item = TemplateItem.new(template_item_params)
    @template = Template.find(params[:template_id])
    @template_item.template = @template

    respond_to do |format|
      if @template_item.save
        format.html { redirect_to template_path(@template_item.template) }
        format.json { render :show, status: :created, location: @template_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @template_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /template_items/1 or /template_items/1.json
  def update
    respond_to do |format|
      if @template_item.update(template_item_params)
        format.html { redirect_to template(@template_item.template), notice: "Template item was successfully updated." }
        format.json { render :show, status: :ok, location: @template_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @template_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /template_items/1 or /template_items/1.json
  def destroy
    @template_item.destroy

    respond_to do |format|
      format.html { redirect_to template_items_url, notice: "Template item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template_item
      @template_item = TemplateItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def template_item_params
      params.require(:template_item).permit(:template_id, :order, :action)
    end
end

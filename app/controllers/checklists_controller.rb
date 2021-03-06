class ChecklistsController < ApplicationController
  before_action :set_checklist, only: %i[ show edit update destroy ]

  # GET /checklists or /checklists.json
  def index
    @checklists = Checklist.all
  end

  # GET /checklists/1 or /checklists/1.json
  def show
  end

  # GET /checklists/new
  def new
    @template = Template.find(params[:template_id])
    @checklist = Checklist.new
  end

  # GET /checklists/1/edit
  # def edit
  # end

  # POST /checklists or /checklists.json
  def create
    @checklist = Checklist.new(checklist_params)
    @template = Template.find(params[:template_id])
    @checklist.template = @template
    # @checklist.template.template_items.checklist_items

    @checklist.template.template_items.each do |item|
      @checklist.checklist_items.build(done: false, resolved_the_issue: false, order: item.order)
    end

    respond_to do |format|
      if @checklist.save
        format.html { redirect_to checklist_url(@checklist), notice: "Checklist was successfully created." }
        format.json { render :show, status: :created, location: @checklist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @checklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /checklists/1 or /checklists/1.json
  def update
    respond_to do |format|
      if @checklist.update(checklist_params)
        format.html { redirect_to checklist_url(@checklist), notice: "Checklist was successfully updated." }
        format.json { render :show, status: :ok, location: @checklist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @checklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checklists/1 or /checklists/1.json
  def destroy
    @checklist.destroy

    respond_to do |format|
      format.html { redirect_to checklists_url, notice: "Checklist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checklist
      @checklist = Checklist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def checklist_params
      params.require(:checklist).permit(:template_id, :resolved_at)
    end
end

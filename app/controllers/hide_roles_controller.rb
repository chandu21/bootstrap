class HideRolesController < ApplicationController
  before_action :set_hide_role, only: [:show, :edit, :update, :destroy]

  # GET /hide_roles
  # GET /hide_roles.json
  def index
    @hide_roles = HideRole.all
  end

  # GET /hide_roles/1
  # GET /hide_roles/1.json
  def show
  end

  # GET /hide_roles/new
  def new
    @hide_role = HideRole.new
  end

  def list
    @roles = Role.all
  end  

  # GET /hide_roles/1/edit
  def edit
  end

  # POST /hide_roles
  # POST /hide_roles.json
  def create
    @hide_role = HideRole.new(hide_role_params)

    respond_to do |format|
      if @hide_role.save
        format.html { redirect_to @hide_role, notice: 'Hide role was successfully created.' }
        format.json { render :show, status: :created, location: @hide_role }
      else
        format.html { render :new }
        format.json { render json: @hide_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hide_roles/1
  # PATCH/PUT /hide_roles/1.json
  def update
    respond_to do |format|
      if @hide_role.update(hide_role_params)
        format.html { redirect_to @hide_role, notice: 'Hide role was successfully updated.' }
        format.json { render :show, status: :ok, location: @hide_role }
      else
        format.html { render :edit }
        format.json { render json: @hide_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hide_roles/1
  # DELETE /hide_roles/1.json
  def destroy
    @hide_role.destroy
    respond_to do |format|
      format.html { redirect_to hide_roles_url, notice: 'Hide role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hide_role
      @hide_role = HideRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hide_role_params
      params.fetch(:hide_role, {})
    end
end

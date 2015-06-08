class Spree::Admin::ArrangementsController < Spree::Admin::BaseController
  before_action :find_arrangement, only: [:edit, :update, :destroy]
  
  helper SpreeContent::ArrangementsHelper
  
  def index
    @arrangements = Spree::Arrangement.visible
  end

  def new
    @arrangement = Spree::Arrangement.new
  end
  
  def edit
  end

  def create
    @arrangement = Spree::Arrangement.new(permitted_resource_params)
    if @arrangement.save
      redirect_to admin_arrangements_path, success: "Save new #{@arrangement.context}"
    else
      render :new
    end
  end

  def update
    @arrangement.update!(permitted_resource_params)
    redirect_to admin_arrangements_path, success: "Updated #{@arrangement.context}"
  end

  def destroy
    binding.pry
    @arrangement.destroy
    redirect_to admin_arrangements_path, notice: "Removed the #{@arrangement.context}"
  end

  private

  def find_arrangement
    @arrangement = Spree::Arrangement.find(params[:id])
  end

  def permitted_resource_params
    params.require(:arrangement).permit(
      :body, :slug, :subject_id, :context, :ancestry, :position, :description, :keywords, :title, :target, :visible,
      translations_attributes: [:id, :locale, :value, :body, :slug, :description, :keywords, :title]
    )
  end
end
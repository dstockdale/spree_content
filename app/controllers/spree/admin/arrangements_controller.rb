class Spree::Admin::ArrangementsController < Spree::Admin::BaseController
  
  def index
    @arrangements = Spree::Arrangement.visible
  end

  def new
    @arrangement = Spree::Arrangement.new
    @arrangement.build_subject
  end
  
  def edit
    @arrangement = Spree::Arrangement.find(params[:id])
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
    @arrangement = Spree::Arrangement.find(params[:id])
    @arrangement.update!(permitted_resource_params)
    redirect_to admin_arrangements_path, success: "Updated #{@arrangement.context}"
  end

  private

  def permitted_resource_params
    params.require(:arrangement).permit(
      :slug, :subject_id, :context, :ancestry, :position, :description, :keywords, :title, :target, :visible,
      subject_attributes: [:body]
    )
  end
end
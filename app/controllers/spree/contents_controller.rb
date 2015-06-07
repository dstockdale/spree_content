class Spree::ContentsController < Spree::BaseController
  
  def show
    path = case params[:path]
    when Array
      '/' + params[:path].join("/")
    when String
      params[:path]
    when nil
      request.path
    end

    unless @content = Spree::Arrangement.visible.find_by_slug(path)
      render_404
    end
  end
  
end
class ApplicationController < ActionController::Base
    helper_method :current_user
    protect_from_forgery with: :null_session
    before_action :require_login
    # if !Rails.env.development?
    #     binding.pry
    #     rescue_from Exception,                        with: :render_500
    #     rescue_from ActiveRecord::RecordNotFound,     with: :render_404
    #     rescue_from ActionController::RoutingError,   with: :render_404
    #   end
    
    #   def routing_error
    #     raise ActionController::RoutingError.new(params[:path])
    #   end
    
    #   def render_404(e = nil)
    #     logger.info "Rendering 404 with exception: #{e.message}" if e
    
    #     if request.xhr?
    #       render json: { error: '404 error' }, status: 404
    #     else
    #       format = params[:format] == :json ? :json : :html
    #       render file: Rails.root.join('public/404.html'), status: 404, layout: false, content_type: 'text/html'
    #     end
    #   end
    
    #   def render_500(e = nil)
    #     logger.info "Rendering 500 with exception: #{e.message}" if e 
    
    #     if request.xhr?
    #       render json: { error: '500 error' }, status: 500
    #     else
    #       format = params[:format] == :json ? :json : :html
    #       render file: Rails.root.join('public/500.html'), status: 500, layout: false, content_type: 'text/html'
    #     end
    #   end
    
    private
  
  def not_authenticated
    redirect_to login_path
  end

end

class ApplicationController < ActionController::API
    include ActionController::Cookies
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def hello_world
        session[:count] = (session[:count] || 0) + 1
        render json: { count: session[:count] }
    end

    private
    def render_not_found exception
        render json: {errors: "#{exception.model} not found"}, status: :not_found
    end
end

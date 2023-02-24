class ApplicationController < ActionController::API
    include ActionController::Cookies
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    
    # uncomment to utilize authorization
    # before_action :authorized

    # def authorized
    #     return render json:{error: "Not Authorized"}, status: :unauthorized unless session.include? :user_id
    # end

    private
    def render_not_found exception
        render json: {errors: "#{exception.model} not found"}, status: :not_found
    end
end

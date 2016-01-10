class ApplicationController < ActionController::Base
  attr_reader :current_user
    respond_to :json
    before_action :authenticate_user_from_token!
    protect_from_forgery with: :null_session

    private

    def authenticate_user_from_token!
      authenticated = authenticate_with_http_token do |user_token, options|
        user_email = options[:email].presence
        user       = user_email && User.find_by_email(user_email)

        if user && Devise.secure_compare(user.authentication_token, user_token)
          @current_user = user
          sign_in user, store: false
        else
          render json: { errors: ['Invalid authorization.'] }, status: :unauthorized
        end
      end

      unless authenticated
        render json: { errors: ['No authorization provided.'] }, status: :unauthorized
      end
    end
end

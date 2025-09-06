class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
end

class ApplicationController < ActionController::Base
  helper_method :user_signed_in?, :current_user, :user_session
end
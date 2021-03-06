# frozen_string_literal: true

# All Administrate controllers inherit from this `Admin::ApplicationController`,
# making it the ideal place to put authentication logic or other
# before_actions.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  # Controller for all administrate
  class ApplicationController < Administrate::ApplicationController
    # #current_user method is decorated in this module.
    include ApplicationBaseModule
    # Integrate Administrate and Pundit
    include Administrate::Punditize
    # Integrate Administrate and Devise
    before_action :authenticate_user!

    # def authenticate_admin
    # end

    # Override this value to specify the number of elements to display at a time
    # on index pages. Defaults to 20.
    # def records_per_page
    #   params[:per_page] || 20
    # end
  end
end

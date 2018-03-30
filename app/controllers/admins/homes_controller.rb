class Admins::HomesController < ApplicationController
before_action :login_check, only: [:index]
layout 'admin.application'

	def index
	end

    def login_check
      if admin_signed_in?
       render 'index'
      else
        redirect_to new_admin_registration_path

      end
    end


end

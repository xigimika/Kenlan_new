class Admins::FreepagesController < ApplicationController
layout 'admin.application'

  def index
  	@freepages = Freepage.page(params[:page]).per(30).order("created_at DESC")
  end


    def destroy
  	@freepages = Freepage.find(params[:id])
  	@freepages.destroy
  		redirect_to admins_freepages_index_path
  end


end

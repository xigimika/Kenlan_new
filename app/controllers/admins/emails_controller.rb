class Admins::EmailsController < ApplicationController

layout 'admin.application'

def index
	@inquiries = Inquiry.all
	@inquiries = Inquiry.page(params[:page]).per(20).order("created_at DESC")
end

def show
	@inquiry = Inquiry.find(params[:id])
end

def destroy
	@inquiry = Inquiry.find(inquiry_params)
	@inquiry.destroy
	redirect_to admins_emails_path
end




def inquiry_params
  params.require(:inquiry).permit(
    							:name,
    							:name_kana,
    							:sex,
    							:company_name,
    							:address,
    							:tell,
    							:email,
    							:position,
    							:naiyou,
    							:text)
end





end

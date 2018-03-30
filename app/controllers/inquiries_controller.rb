class InquiriesController < ApplicationController

  def index
  	# 入力画面を表示
  	@inquiry = Inquiry.new
    #render :action => 'index'
  end

  def confirm
  	# 入力値のチェック
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.valid?
      # OK。確認画面を表示
      render :action => 'confirm'
    else
      # NG。入力画面を再表示
      render :action => 'index'
    end
  end

  def sousin
  	# メール送信
    @inquiry = Inquiry.new(inquiry_params)
    # 完了画面を表示
    render :action => 'sousin'
  end


  def create
  	@inquiry = Inquiry.new(inquiry_params)
  	if @inquiry.save
  		render :action => 'sousin'
  	else
  		render :index
  	end
  end

	def destroy
		@inquiry = Inquiry.find(params[:id])
		@inquiry.destroy
		redirect_to admins_emails_path
	end



	private

	def inquiry_params
	  # submitしたデータのうち、Model作成に必要なものを
	  # permitの引数に指定する
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
	    							:text
	  )
	end
end

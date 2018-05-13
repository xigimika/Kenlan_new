class FreepagesController < ApplicationController

layout 'freepage.application'

  def top
  end

  def index
  	  @freepages = Freepage.page(params[:page]).per(20).order("created_at DESC")
  end

  def show
  	@freepages = Freepage.find(params[:id])
  end

  def new
  	@freepage = Freepage.new
  end

  def create
  	@freepages = Freepage.new(freepage_params)
    @freepages.admin_id = current_admin.id
    if @freepages.save
       redirect_to admins_freepages_index_path
    else
       render :new
    end
  end

  def edit
  	@freepages = Freepage.find(params[:id])
  end

  def update
  	@freepages = Freepage.find(params[:id])
    @freepages.update(freepage_params)
    redirect_to admins_freepages_index_path(@freepage)
  end

  def destroy
  	@freepages = Freepage.find(params[:id])
  	@freepages.destroy
  		redirect_to admins_freepages_index_path
  end


  private

    def freepage_params
        params.require(:freepage).permit(
            :title,
            :genre,
            :text,
            :image_free,
            :midashi_1,
            :midashi_2,
            :midashi_3,
            :midashi_4,
            :midashi_5,
            :midashi_6,
            :stext_1,
            :stext_2,
            :stext_3,
            :stext_4,
            :stext_5,
            :stext_6,
            :image_f2_1,
            :image_f2_2,
            :image_f2_3,
            :image_f2_4,
            :image_f2_5,
            :image_f2_6)
    end



end

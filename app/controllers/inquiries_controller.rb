class InquiriesController < ApplicationController

  skip_before_action :require_login, only: [:new, :create], raise: false

        def new
            @inquiry = Inquiry.new
        end
      
        def create
          @inquiry = Inquiry.new(inquiry_params)
          if @inquiry.save
            InquiryMailer.send_mail(@inquiry).deliver_later
            flash[:info] = 'お問い合わせいただきありがとうございました'
            redirect_to root_path
          else
            render 'new'
          end
        end
      
        private
      
        def inquiry_params
          params.require(:inquiry).permit(:name, :message).merge(category: params[:inquiry][:category].to_i)
        end
    
end

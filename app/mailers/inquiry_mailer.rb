class InquiryMailer < ApplicationMailer
    def send_mail(inquiry)
        @inquiry = inquiry
        mail(to: ENV['GMAIL_USERNAME'], subject: "お問い合わせ")
    end
end

class ConfirmUser < ActionMailer::Base
   default from: "info@creta.sachanganesh.com"

  def send_confirmation(email)
    mail(:to => email, :subject => "Welcome to Creta").deliver
  end
end

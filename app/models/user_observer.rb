class UserObserver < ActiveRecord::Base
	# We check if it's a new user
  def before_save(user)
    @is_new_record = user.new_record?
    true
   end

  def after_save(user)
  # If it's not a new user we don't want to send them another welcome email
    if @is_new_record then
      UserMailer.welcome_mail(user.email)
    end
  end
end

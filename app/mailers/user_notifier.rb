class UserNotifier < ApplicationMailer
  default from: "neighbornation.ga@gmail.com"
  # layout 'mailer'

  def send_post_notify_email(user)
    @user = user

    mail(to: @user.email,
    :subject => 'Someone has commented on your post!')
  end

end

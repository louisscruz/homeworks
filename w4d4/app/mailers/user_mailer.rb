class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(user)
    @user = user
    mail(to: user.email, subject: 'Welcome to My Awesome Site')
  end

  # THIS WOULD BE CALLED IN THE USERS CONTROLLER LIKE SO:
  # msg = UserMailer.welcome_email(@user)
  # msg.deliver
end

class DeviseMailer < Devise::Mailer
  default from: 'no-reply@example.com'

  def welcome_email(user)
    @user = user
    mail(to: 'kartashovaelizaveta191@gmail.com', subject: 'Welcome to our site!')
    # mail(to: @user.email, subject: 'Welcome to our site!')
  end
end

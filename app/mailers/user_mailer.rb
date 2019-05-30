class UserMailer < ApplicationMailer

  default from: 'amlevy327@gmail.com'

  def verification_email(user)
    @user = user
    mail(to: @user.email, subject: 'Verify pbdt account')
  end
end

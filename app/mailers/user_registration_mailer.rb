class UserRegistrationMailer < ApplicationMailer
  def send_confirmation(temporary_user)
    @link = "#{ENV['FRONT_APP_URL']}/user-registration/complete?uuid=#{temporary_user.uuid}"
    @email = temporary_user.email
    mail to: temporary_user.email, subject: '[Profile Book] ユーザー登録の確認'
  end
end

class ApplicationMailer < ActionMailer::Base
  default from: "Profile Book <#{ENV['EMAIL_ADDRESS']}>"
  layout 'mailer'
end

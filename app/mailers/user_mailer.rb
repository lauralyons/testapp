class UserMailer < ApplicationMailer
  default from: "lauraslyons@gmail.com"

  def contact_form(email, name, message)
		@message = message
		mail(from: email, to: "lauraslyons@gmail.com", subject: "Rails Web App message from #{name}")
	end

  def welcome(user)
    @appname = "Belle Waters Jewelry"
    mail(to: user.email,
         subject: "Welcome to #{@appname}!")
  end

end

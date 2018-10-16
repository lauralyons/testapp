class UserMailer < ApplicationMailer
  default from: "lauraslyons@gmail.com"
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  def contact_form(@email, @name, @message)
  @message = message
    mail(from: email,
         to: 'lauraslyons@gmail.com',
         subject: "A new contact form message from #{name}")
  end
end

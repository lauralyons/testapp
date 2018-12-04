class UserMailerPreview < ActionMailer::Preview
  def contact_form
    UserMailer.contact_form("lauraslyons@gmail.com", "John", "Hello World!").deliver_now
  end
end

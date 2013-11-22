class UserMailer < ActionMailer::Base
  default from: "derik.strattan@gmail.com"

  def signup_confirmation(user)
    @user = user
    @email = user.email
    attachments.inline['original_ttFi_102a00001555118f.jpg'] = File.read("#{Rails.root}/app/assets/images/original_ttFi_102a00001555118f.jpg")
    mail(:to => "#{user.name} <#{@user.email}>", :subject => "Thanks for registering")
  end
end

class UserMailerPreview < ActionMailer::Preview
  def welcome
    user = User.find(3)
    # This is how you pass value to params[:user] inside mailer definition!
    UserMailer.with(user: user).welcome
  end
end
class PostMailer < ApplicationMailer
  def new_post_email
    @post = params[:post]
    mail(to: "sumubhat123@gmail.com", subject: "You have a new post!!!")
  end
end

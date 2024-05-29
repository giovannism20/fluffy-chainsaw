class PostMailer < ApplicationMailer
  def new_post_email(reader, post)
    @reader = reader
    @post = post

    mail(
      to: @reader.email,
      subject: "Nova publicação no blog #{post.title}",
    )
  end
end

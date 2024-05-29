module PostNotifier
  extend ActiveSupport::Concern

  included do
    after_action :notify_users, only: [:create]
  end

  private

  def notify_users
    @reader = Reader.all
    if @post.persisted?
      puts "Enviando e-mail para todos os usuários."
      @reader.each do |reader|
        PostMailer.new_post_email(reader, @post)
      end
    end
  end
end

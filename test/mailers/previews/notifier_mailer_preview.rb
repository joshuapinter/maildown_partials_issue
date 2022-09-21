# Preview all emails at http://localhost:3000/rails/mailers/notifier_mailer
class NotifierMailerPreview < ActionMailer::Preview

 # Accessible from http://localhost:3000/rails/mailers/notifier/non_markdown_partial_test
  def non_markdown_partial_test
    NotifierMailer.non_markdown_partial_test
  end

 # Accessible from http://localhost:3000/rails/mailers/notifier/markdown_partial_test
  def markdown_partial_test
    NotifierMailer.markdown_partial_test
  end

end

class NotifierMailer < ApplicationMailer

  def non_markdown_partial_test
    mail(
      to:      "your@mom.com",
      subject: "Partials correctly show up as plain text correctly when NOT using markdown via maildown."
    )
  end

  def markdown_partial_test
    mail(
      to:      "your@mom.com",
      subject: "Partials incorrectly show up as HTML when using markdown via maildown."
    )
  end

end

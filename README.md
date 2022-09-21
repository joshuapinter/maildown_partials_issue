This repo is an example app to demonstrate how the `maildown` gem does not render partials in plain text correctly.

It is in direct response to this Github Issue: https://github.com/zombocom/maildown/issues/53

Steps to reproduce the issue:

1. Clone the repo and install gems via `bundle`.

2. Run the server via `bundle exec rails s`

3. Navigate to http://localhost:3000/rails/mailers/notifier_mailer/markdown_partial_test in your browser.

4. By default the HTML format will appear, and it appears correctly.

5. Click on the format drop down and select "View as plain-text email".

    You will see that the partial gets rendered _incorrectly_ as HTML instead of plain text.

6. To see what it _should_ look like, navigate to http://localhost:3000/rails/mailers/notifier_mailer/non_markdown_partial_test.txt in your browser.

    You will see that using two files for formats (`html.erb` and `text.erb`) and not using markdown (`md.erb`) via maildown renders the partials correctly for both HTML and plain text.
This repo is an example app to demonstrate how the `maildown` gem does not render partials in plain text correctly.

It is in direct response to this Github Issue: https://github.com/zombocom/maildown/issues/53

Steps to reproduce the issue:

1. Clone the repo and install gems via `bundle`.

2. Run the server via `bundle exec rails s`

3. Navigate to http://localhost:3000/rails/mailers/notifier_mailer/markdown_partial_test in your browser:

    ![Screen Shot 2022-09-21 at 10 11 14](https://user-images.githubusercontent.com/180819/191556105-32470488-c3ed-4dae-80cf-6ec59d8d46fe.png)

    By default the HTML format will appear, and it appears correctly.

5. Click on the format drop down and select "View as plain-text email".
    
    ![Screen Shot 2022-09-21 at 10 11 46](https://user-images.githubusercontent.com/180819/191556221-b9f4f421-d3ce-4b31-9246-4d653914a836.png)

    You will see that the partial gets rendered _incorrectly_ as HTML instead of plain text.

6. To see what it _should_ look like, navigate to http://localhost:3000/rails/mailers/notifier_mailer/non_markdown_partial_test.txt in your browser.

    ![Screen Shot 2022-09-21 at 10 12 02](https://user-images.githubusercontent.com/180819/191556280-1f1495e1-c062-4dfe-874f-60f32ef03120.png)

    You will see that using two files for formats (`html.erb` and `text.erb`) and not using markdown (`md.erb`) via maildown renders the partials correctly for both HTML and plain text.

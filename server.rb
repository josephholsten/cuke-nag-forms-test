require 'rubygems'
require 'sinatra'

get '/' do
  <<-EOF
    <html>
    <head><title>Testing submitting forms</title></head>
    <body>
      Log In
      <form method="post" action="/" id="myform">
        <label for="username"><input id="username" name="username">
        <label for="password"><input id="password" name="password" type="password">
        <input type="submit" value="Log In">
      </form>
    </body>
    </html>
  EOF
end

post '/' do
  <<-EOF
    <html>
    <head><title>Testing cucumber</title></head>
    <body>
      Values: #{params[:username]}, #{params[:password]}
    </body>
    </html>
  EOF
end

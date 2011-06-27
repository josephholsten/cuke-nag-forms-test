Then /^I can submit a complete the form in one go$/ do
  visit 'http://localhost:4567/'
  fill_in('username', :with => 'my user')
  fill_in('password', :with => 'my password')
  response = click_button('Log In')
  response.body.to_s.should =~ /Values: my user, my password/m
end

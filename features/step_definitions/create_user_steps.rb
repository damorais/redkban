Given("I am on the RedKban home page") do
    visit "/"
end

When("I click on {string}") do |button_label|
    click_on button_label
end

Then("I should be on the Create New Account page") do
    expect(page).to have_current_path(new_user_path)
end

Given("I am on the Sign Up page") do
  visit new_user_path
end
  
When("I fill {string} with {string}") do |field_name, field_value|
  fill_in "user[#{field_name}]", with: field_value
end
  
Then("I should be redirected to Boards page") do
  expect(page).to have_current_path(boards_path)
end
  
Then("A {string} message saying that {string} should be exibited") do |css_class_name, content_message|
  expect(page).to have_css(".alert.alert-#{css_class_name}", text: content_message)
end

Then("An user with {string} email exists") do |email|
  expect(User.exists?(email: email)).to be(true)
end

Then("I should stay on the Sign Up page") do
  expect(page).to have_current_path(new_user_path)
end

Then("A message saying that {string} should be exibited") do |content_message|
  expect(page).to have_content(content_message)
end

Then("An user with {string} email already exists") do |email|
  #Creates a new user
  expect(User.new(email: email, firstname: "Dummy", lastname: "Dummy", password:  "dummy").save).to be(true)
  
  expect(User.exists?(email: email)).to be(true)
end
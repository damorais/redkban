Given("I am on the RedKban home page") do
    visit "/"
end

When("I click on {string}") do |string|
    click_link string
end

Then("I should be on the Create New Account page") do
    expect(page).to have_current_path(new_user_path)
end
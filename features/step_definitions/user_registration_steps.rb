Given("I am on the homepage") do
  visit "/"
end

Given("I click on the registration link") do
  click_on "registration-link"
end

When("I fill in and submit the registration from") do
  fill_in "user_name", with: "jdoe"
  fill_in "user_email", with: "jdoe@example.com"
  fill_in "user_password", with: "secret1234"
  fill_in "user_password_confirmation", with: "secret1234"
  click_on "user_registration_submit"
end

Then("I should see a registration confirmation message") do
  expect(page).to have_content("Welcome")
end

Then("I should receive a confirmation email") do
  pending # Write code here that turns the phrase above into concrete actions
end

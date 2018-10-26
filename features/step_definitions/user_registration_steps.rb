Given("I am on the homepage") do
  visit "/"
end

Given("I click on the registration link") do
  click_on "registration-link"
end

When("I fill in and submit the registration from") do
  fill_in "user-name", with: "jdoe"
  fill_in "user-email", with: "jdoe@example.com"
  fill_in "user-password", with: "secret1234"
  fill_in "user-password-confirmation", with: "secret1234"
  click_on "user-registration-submit"
end

Then("I should see a registration confirmation message") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should receive a confirmation email") do
  pending # Write code here that turns the phrase above into concrete actions
end
